package org.roboguice.shaded.goole.common.cache;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractQueue;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;
import org.roboguice.shaded.goole.common.annotations.GwtIncompatible;
import org.roboguice.shaded.goole.common.annotations.VisibleForTesting;
import org.roboguice.shaded.goole.common.base.Equivalence;
import org.roboguice.shaded.goole.common.base.Function;
import org.roboguice.shaded.goole.common.base.Preconditions;
import org.roboguice.shaded.goole.common.base.Stopwatch;
import org.roboguice.shaded.goole.common.base.Ticker;
import org.roboguice.shaded.goole.common.cache.AbstractCache.SimpleStatsCounter;
import org.roboguice.shaded.goole.common.cache.AbstractCache.StatsCounter;
import org.roboguice.shaded.goole.common.cache.CacheLoader.InvalidCacheLoadException;
import org.roboguice.shaded.goole.common.collect.AbstractSequentialIterator;
import org.roboguice.shaded.goole.common.collect.ImmutableMap;
import org.roboguice.shaded.goole.common.collect.Iterators;
import org.roboguice.shaded.goole.common.collect.Maps;
import org.roboguice.shaded.goole.common.primitives.Ints;
import org.roboguice.shaded.goole.common.util.concurrent.ExecutionError;
import org.roboguice.shaded.goole.common.util.concurrent.Futures;
import org.roboguice.shaded.goole.common.util.concurrent.ListenableFuture;
import org.roboguice.shaded.goole.common.util.concurrent.ListeningExecutorService;
import org.roboguice.shaded.goole.common.util.concurrent.MoreExecutors;
import org.roboguice.shaded.goole.common.util.concurrent.SettableFuture;
import org.roboguice.shaded.goole.common.util.concurrent.UncheckedExecutionException;
import org.roboguice.shaded.goole.common.util.concurrent.Uninterruptibles;

@GwtCompatible(emulated = true)
class LocalCache<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V> {
    static final int CONTAINS_VALUE_RETRIES = 3;
    static final Queue<? extends Object> DISCARDING_QUEUE = new AbstractQueue<Object>() {
        public boolean offer(Object obj) {
            return true;
        }

        public Object peek() {
            return null;
        }

        public Object poll() {
            return null;
        }

        public int size() {
            return 0;
        }

        public Iterator<Object> iterator() {
            return Iterators.emptyIterator();
        }
    };
    static final int DRAIN_MAX = 16;
    static final int DRAIN_THRESHOLD = 63;
    static final int MAXIMUM_CAPACITY = 1073741824;
    static final int MAX_SEGMENTS = 65536;
    static final ValueReference<Object, Object> UNSET = new ValueReference<Object, Object>() {
        public ValueReference<Object, Object> copyFor(ReferenceQueue<Object> referenceQueue, @Nullable Object obj, ReferenceEntry<Object, Object> referenceEntry) {
            return this;
        }

        public Object get() {
            return null;
        }

        public ReferenceEntry<Object, Object> getEntry() {
            return null;
        }

        public int getWeight() {
            return 0;
        }

        public boolean isActive() {
            return false;
        }

        public boolean isLoading() {
            return false;
        }

        public void notifyNewValue(Object obj) {
        }

        public Object waitForValue() {
            return null;
        }
    };
    static final Logger logger = Logger.getLogger(LocalCache.class.getName());
    static final ListeningExecutorService sameThreadExecutor = MoreExecutors.sameThreadExecutor();
    final int concurrencyLevel;
    @Nullable
    final CacheLoader<? super K, V> defaultLoader;
    final EntryFactory entryFactory;
    Set<Entry<K, V>> entrySet;
    final long expireAfterAccessNanos;
    final long expireAfterWriteNanos;
    final StatsCounter globalStatsCounter;
    final Equivalence<Object> keyEquivalence;
    Set<K> keySet;
    final Strength keyStrength;
    final long maxWeight;
    final long refreshNanos;
    final RemovalListener<K, V> removalListener;
    final Queue<RemovalNotification<K, V>> removalNotificationQueue;
    final int segmentMask;
    final int segmentShift;
    final Segment<K, V>[] segments;
    final Ticker ticker;
    final Equivalence<Object> valueEquivalence;
    final Strength valueStrength;
    Collection<V> values;
    final Weigher<K, V> weigher;

    enum EntryFactory {
        STRONG {
            /* Access modifiers changed, original: 0000 */
            public <K, V> ReferenceEntry<K, V> newEntry(Segment<K, V> segment, K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
                return new StrongEntry(k, i, referenceEntry);
            }
        },
        STRONG_ACCESS {
            /* Access modifiers changed, original: 0000 */
            public <K, V> ReferenceEntry<K, V> newEntry(Segment<K, V> segment, K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
                return new StrongAccessEntry(k, i, referenceEntry);
            }

            /* Access modifiers changed, original: 0000 */
            public <K, V> ReferenceEntry<K, V> copyEntry(Segment<K, V> segment, ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
                ReferenceEntry copyEntry = super.copyEntry(segment, referenceEntry, referenceEntry2);
                copyAccessEntry(referenceEntry, copyEntry);
                return copyEntry;
            }
        },
        STRONG_WRITE {
            /* Access modifiers changed, original: 0000 */
            public <K, V> ReferenceEntry<K, V> newEntry(Segment<K, V> segment, K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
                return new StrongWriteEntry(k, i, referenceEntry);
            }

            /* Access modifiers changed, original: 0000 */
            public <K, V> ReferenceEntry<K, V> copyEntry(Segment<K, V> segment, ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
                ReferenceEntry copyEntry = super.copyEntry(segment, referenceEntry, referenceEntry2);
                copyWriteEntry(referenceEntry, copyEntry);
                return copyEntry;
            }
        },
        STRONG_ACCESS_WRITE {
            /* Access modifiers changed, original: 0000 */
            public <K, V> ReferenceEntry<K, V> newEntry(Segment<K, V> segment, K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
                return new StrongAccessWriteEntry(k, i, referenceEntry);
            }

            /* Access modifiers changed, original: 0000 */
            public <K, V> ReferenceEntry<K, V> copyEntry(Segment<K, V> segment, ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
                ReferenceEntry copyEntry = super.copyEntry(segment, referenceEntry, referenceEntry2);
                copyAccessEntry(referenceEntry, copyEntry);
                copyWriteEntry(referenceEntry, copyEntry);
                return copyEntry;
            }
        },
        WEAK {
            /* Access modifiers changed, original: 0000 */
            public <K, V> ReferenceEntry<K, V> newEntry(Segment<K, V> segment, K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
                return new WeakEntry(segment.keyReferenceQueue, k, i, referenceEntry);
            }
        },
        WEAK_ACCESS {
            /* Access modifiers changed, original: 0000 */
            public <K, V> ReferenceEntry<K, V> newEntry(Segment<K, V> segment, K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
                return new WeakAccessEntry(segment.keyReferenceQueue, k, i, referenceEntry);
            }

            /* Access modifiers changed, original: 0000 */
            public <K, V> ReferenceEntry<K, V> copyEntry(Segment<K, V> segment, ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
                ReferenceEntry copyEntry = super.copyEntry(segment, referenceEntry, referenceEntry2);
                copyAccessEntry(referenceEntry, copyEntry);
                return copyEntry;
            }
        },
        WEAK_WRITE {
            /* Access modifiers changed, original: 0000 */
            public <K, V> ReferenceEntry<K, V> newEntry(Segment<K, V> segment, K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
                return new WeakWriteEntry(segment.keyReferenceQueue, k, i, referenceEntry);
            }

            /* Access modifiers changed, original: 0000 */
            public <K, V> ReferenceEntry<K, V> copyEntry(Segment<K, V> segment, ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
                ReferenceEntry copyEntry = super.copyEntry(segment, referenceEntry, referenceEntry2);
                copyWriteEntry(referenceEntry, copyEntry);
                return copyEntry;
            }
        },
        WEAK_ACCESS_WRITE {
            /* Access modifiers changed, original: 0000 */
            public <K, V> ReferenceEntry<K, V> newEntry(Segment<K, V> segment, K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
                return new WeakAccessWriteEntry(segment.keyReferenceQueue, k, i, referenceEntry);
            }

            /* Access modifiers changed, original: 0000 */
            public <K, V> ReferenceEntry<K, V> copyEntry(Segment<K, V> segment, ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
                ReferenceEntry copyEntry = super.copyEntry(segment, referenceEntry, referenceEntry2);
                copyAccessEntry(referenceEntry, copyEntry);
                copyWriteEntry(referenceEntry, copyEntry);
                return copyEntry;
            }
        };
        
        static final int ACCESS_MASK = 1;
        static final int WEAK_MASK = 4;
        static final int WRITE_MASK = 2;
        static final EntryFactory[] factories = null;

        public abstract <K, V> ReferenceEntry<K, V> newEntry(Segment<K, V> segment, K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry);

        static {
            factories = new EntryFactory[]{STRONG, STRONG_ACCESS, STRONG_WRITE, STRONG_ACCESS_WRITE, WEAK, WEAK_ACCESS, WEAK_WRITE, WEAK_ACCESS_WRITE};
        }

        static EntryFactory getFactory(Strength strength, boolean z, boolean z2) {
            int i = 0;
            int i2 = (strength == Strength.WEAK ? 4 : 0) | z;
            if (z2) {
                i = 2;
            }
            return factories[i2 | i];
        }

        /* Access modifiers changed, original: 0000 */
        @GuardedBy("Segment.this")
        public <K, V> ReferenceEntry<K, V> copyEntry(Segment<K, V> segment, ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
            return newEntry(segment, referenceEntry.getKey(), referenceEntry.getHash(), referenceEntry2);
        }

        /* Access modifiers changed, original: 0000 */
        @GuardedBy("Segment.this")
        public <K, V> void copyAccessEntry(ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
            referenceEntry2.setAccessTime(referenceEntry.getAccessTime());
            LocalCache.connectAccessOrder(referenceEntry.getPreviousInAccessQueue(), referenceEntry2);
            LocalCache.connectAccessOrder(referenceEntry2, referenceEntry.getNextInAccessQueue());
            LocalCache.nullifyAccessOrder(referenceEntry);
        }

        /* Access modifiers changed, original: 0000 */
        @GuardedBy("Segment.this")
        public <K, V> void copyWriteEntry(ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
            referenceEntry2.setWriteTime(referenceEntry.getWriteTime());
            LocalCache.connectWriteOrder(referenceEntry.getPreviousInWriteQueue(), referenceEntry2);
            LocalCache.connectWriteOrder(referenceEntry2, referenceEntry.getNextInWriteQueue());
            LocalCache.nullifyWriteOrder(referenceEntry);
        }
    }

    interface ReferenceEntry<K, V> {
        long getAccessTime();

        int getHash();

        @Nullable
        K getKey();

        @Nullable
        ReferenceEntry<K, V> getNext();

        ReferenceEntry<K, V> getNextInAccessQueue();

        ReferenceEntry<K, V> getNextInWriteQueue();

        ReferenceEntry<K, V> getPreviousInAccessQueue();

        ReferenceEntry<K, V> getPreviousInWriteQueue();

        ValueReference<K, V> getValueReference();

        long getWriteTime();

        void setAccessTime(long j);

        void setNextInAccessQueue(ReferenceEntry<K, V> referenceEntry);

        void setNextInWriteQueue(ReferenceEntry<K, V> referenceEntry);

        void setPreviousInAccessQueue(ReferenceEntry<K, V> referenceEntry);

        void setPreviousInWriteQueue(ReferenceEntry<K, V> referenceEntry);

        void setValueReference(ValueReference<K, V> valueReference);

        void setWriteTime(long j);
    }

    static class Segment<K, V> extends ReentrantLock {
        @GuardedBy("Segment.this")
        final Queue<ReferenceEntry<K, V>> accessQueue;
        volatile int count;
        final ReferenceQueue<K> keyReferenceQueue;
        final LocalCache<K, V> map;
        final long maxSegmentWeight;
        int modCount;
        final AtomicInteger readCount = new AtomicInteger();
        final Queue<ReferenceEntry<K, V>> recencyQueue;
        final StatsCounter statsCounter;
        volatile AtomicReferenceArray<ReferenceEntry<K, V>> table;
        int threshold;
        @GuardedBy("Segment.this")
        int totalWeight;
        final ReferenceQueue<V> valueReferenceQueue;
        @GuardedBy("Segment.this")
        final Queue<ReferenceEntry<K, V>> writeQueue;

        Segment(LocalCache<K, V> localCache, int i, long j, StatsCounter statsCounter) {
            this.map = localCache;
            this.maxSegmentWeight = j;
            this.statsCounter = (StatsCounter) Preconditions.checkNotNull(statsCounter);
            initTable(newEntryArray(i));
            ReferenceQueue referenceQueue = null;
            this.keyReferenceQueue = localCache.usesKeyReferences() ? new ReferenceQueue() : null;
            if (localCache.usesValueReferences()) {
                referenceQueue = new ReferenceQueue();
            }
            this.valueReferenceQueue = referenceQueue;
            this.recencyQueue = localCache.usesAccessQueue() ? new ConcurrentLinkedQueue() : LocalCache.discardingQueue();
            this.writeQueue = localCache.usesWriteQueue() ? new WriteQueue() : LocalCache.discardingQueue();
            this.accessQueue = localCache.usesAccessQueue() ? new AccessQueue() : LocalCache.discardingQueue();
        }

        /* Access modifiers changed, original: 0000 */
        public AtomicReferenceArray<ReferenceEntry<K, V>> newEntryArray(int i) {
            return new AtomicReferenceArray(i);
        }

        /* Access modifiers changed, original: 0000 */
        public void initTable(AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray) {
            this.threshold = (atomicReferenceArray.length() * 3) / 4;
            if (!this.map.customWeigher() && ((long) this.threshold) == this.maxSegmentWeight) {
                this.threshold++;
            }
            this.table = atomicReferenceArray;
        }

        /* Access modifiers changed, original: 0000 */
        @GuardedBy("Segment.this")
        public ReferenceEntry<K, V> newEntry(K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
            return this.map.entryFactory.newEntry(this, Preconditions.checkNotNull(k), i, referenceEntry);
        }

        /* Access modifiers changed, original: 0000 */
        @GuardedBy("Segment.this")
        public ReferenceEntry<K, V> copyEntry(ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
            if (referenceEntry.getKey() == null) {
                return null;
            }
            ValueReference valueReference = referenceEntry.getValueReference();
            Object obj = valueReference.get();
            if (obj == null && valueReference.isActive()) {
                return null;
            }
            ReferenceEntry copyEntry = this.map.entryFactory.copyEntry(this, referenceEntry, referenceEntry2);
            copyEntry.setValueReference(valueReference.copyFor(this.valueReferenceQueue, obj, copyEntry));
            return copyEntry;
        }

        /* Access modifiers changed, original: 0000 */
        @GuardedBy("Segment.this")
        public void setValue(ReferenceEntry<K, V> referenceEntry, K k, V v, long j) {
            ValueReference valueReference = referenceEntry.getValueReference();
            int weigh = this.map.weigher.weigh(k, v);
            Preconditions.checkState(weigh >= 0, "Weights must be non-negative");
            referenceEntry.setValueReference(this.map.valueStrength.referenceValue(this, referenceEntry, v, weigh));
            recordWrite(referenceEntry, weigh, j);
            valueReference.notifyNewValue(v);
        }

        /* Access modifiers changed, original: 0000 */
        public V get(K k, int i, CacheLoader<? super K, V> cacheLoader) throws ExecutionException {
            Preconditions.checkNotNull(k);
            Preconditions.checkNotNull(cacheLoader);
            try {
                Object scheduleRefresh;
                if (this.count != 0) {
                    ReferenceEntry entry = getEntry(k, i);
                    if (entry != null) {
                        long read = this.map.ticker.read();
                        Object liveValue = getLiveValue(entry, read);
                        if (liveValue != null) {
                            recordRead(entry, read);
                            this.statsCounter.recordHits(1);
                            scheduleRefresh = scheduleRefresh(entry, k, i, liveValue, read, cacheLoader);
                            postReadCleanup();
                            return scheduleRefresh;
                        }
                        ValueReference valueReference = entry.getValueReference();
                        if (valueReference.isLoading()) {
                            scheduleRefresh = waitForLoadingValue(entry, k, valueReference);
                            postReadCleanup();
                            return scheduleRefresh;
                        }
                    }
                }
                scheduleRefresh = lockedGetOrLoad(k, i, cacheLoader);
                postReadCleanup();
                return scheduleRefresh;
            } catch (ExecutionException e) {
                Throwable cause = e.getCause();
                if (cause instanceof Error) {
                    throw new ExecutionError((Error) cause);
                } else if (cause instanceof RuntimeException) {
                    throw new UncheckedExecutionException(cause);
                } else {
                    throw e;
                }
            } catch (Throwable th) {
                postReadCleanup();
            }
        }

        /*  JADX ERROR: NullPointerException in pass: EliminatePhiNodes
            java.lang.NullPointerException
            	at jadx.core.utils.BlockUtils.getBlockByInsn(BlockUtils.java:172)
            	at jadx.core.dex.visitors.ssa.EliminatePhiNodes.replaceMerge(EliminatePhiNodes.java:90)
            	at jadx.core.dex.visitors.ssa.EliminatePhiNodes.replaceMergeInstructions(EliminatePhiNodes.java:68)
            	at jadx.core.dex.visitors.ssa.EliminatePhiNodes.visit(EliminatePhiNodes.java:31)
            	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
            	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
            	at java.util.ArrayList.forEach(ArrayList.java:1257)
            	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
            	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$0(DepthTraversal.java:13)
            	at java.util.ArrayList.forEach(ArrayList.java:1257)
            	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:13)
            	at jadx.core.ProcessClass.process(ProcessClass.java:32)
            	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:51)
            	at java.lang.Iterable.forEach(Iterable.java:75)
            	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:51)
            	at jadx.core.ProcessClass.process(ProcessClass.java:37)
            	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:292)
            	at jadx.api.JavaClass.decompile(JavaClass.java:62)
            	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
            */
        V lockedGetOrLoad(K r18, int r19, org.roboguice.shaded.goole.common.cache.CacheLoader<? super K, V> r20) throws java.util.concurrent.ExecutionException {
            /*
            r17 = this;
            r1 = r17;
            r2 = r18;
            r3 = r19;
            r17.lock();
            r4 = r1.map;	 Catch:{ all -> 0x00c8 }
            r4 = r4.ticker;	 Catch:{ all -> 0x00c8 }
            r4 = r4.read();	 Catch:{ all -> 0x00c8 }
            r1.preWriteCleanup(r4);	 Catch:{ all -> 0x00c8 }
            r6 = r1.count;	 Catch:{ all -> 0x00c8 }
            r7 = 1;	 Catch:{ all -> 0x00c8 }
            r6 = r6 - r7;	 Catch:{ all -> 0x00c8 }
            r8 = r1.table;	 Catch:{ all -> 0x00c8 }
            r9 = r8.length();	 Catch:{ all -> 0x00c8 }
            r9 = r9 - r7;	 Catch:{ all -> 0x00c8 }
            r9 = r9 & r3;	 Catch:{ all -> 0x00c8 }
            r10 = r8.get(r9);	 Catch:{ all -> 0x00c8 }
            r10 = (org.roboguice.shaded.goole.common.cache.LocalCache.ReferenceEntry) r10;	 Catch:{ all -> 0x00c8 }
            r11 = r10;	 Catch:{ all -> 0x00c8 }
        L_0x0027:
            if (r11 == 0) goto L_0x0086;	 Catch:{ all -> 0x00c8 }
        L_0x0029:
            r13 = r11.getKey();	 Catch:{ all -> 0x00c8 }
            r14 = r11.getHash();	 Catch:{ all -> 0x00c8 }
            if (r14 != r3) goto L_0x0081;	 Catch:{ all -> 0x00c8 }
        L_0x0033:
            if (r13 == 0) goto L_0x0081;	 Catch:{ all -> 0x00c8 }
        L_0x0035:
            r14 = r1.map;	 Catch:{ all -> 0x00c8 }
            r14 = r14.keyEquivalence;	 Catch:{ all -> 0x00c8 }
            r14 = r14.equivalent(r2, r13);	 Catch:{ all -> 0x00c8 }
            if (r14 == 0) goto L_0x0081;	 Catch:{ all -> 0x00c8 }
        L_0x003f:
            r14 = r11.getValueReference();	 Catch:{ all -> 0x00c8 }
            r15 = r14.isLoading();	 Catch:{ all -> 0x00c8 }
            if (r15 == 0) goto L_0x004b;	 Catch:{ all -> 0x00c8 }
        L_0x0049:
            r4 = 0;	 Catch:{ all -> 0x00c8 }
            goto L_0x0088;	 Catch:{ all -> 0x00c8 }
        L_0x004b:
            r15 = r14.get();	 Catch:{ all -> 0x00c8 }
            if (r15 != 0) goto L_0x0057;	 Catch:{ all -> 0x00c8 }
        L_0x0051:
            r4 = org.roboguice.shaded.goole.common.cache.RemovalCause.COLLECTED;	 Catch:{ all -> 0x00c8 }
            r1.enqueueNotification(r13, r3, r14, r4);	 Catch:{ all -> 0x00c8 }
            goto L_0x0064;	 Catch:{ all -> 0x00c8 }
        L_0x0057:
            r12 = r1.map;	 Catch:{ all -> 0x00c8 }
            r12 = r12.isExpired(r11, r4);	 Catch:{ all -> 0x00c8 }
            if (r12 == 0) goto L_0x0072;	 Catch:{ all -> 0x00c8 }
        L_0x005f:
            r4 = org.roboguice.shaded.goole.common.cache.RemovalCause.EXPIRED;	 Catch:{ all -> 0x00c8 }
            r1.enqueueNotification(r13, r3, r14, r4);	 Catch:{ all -> 0x00c8 }
        L_0x0064:
            r4 = r1.writeQueue;	 Catch:{ all -> 0x00c8 }
            r4.remove(r11);	 Catch:{ all -> 0x00c8 }
            r4 = r1.accessQueue;	 Catch:{ all -> 0x00c8 }
            r4.remove(r11);	 Catch:{ all -> 0x00c8 }
            r1.count = r6;	 Catch:{ all -> 0x00c8 }
            r4 = 1;	 Catch:{ all -> 0x00c8 }
            goto L_0x0088;	 Catch:{ all -> 0x00c8 }
        L_0x0072:
            r1.recordLockedRead(r11, r4);	 Catch:{ all -> 0x00c8 }
            r2 = r1.statsCounter;	 Catch:{ all -> 0x00c8 }
            r2.recordHits(r7);	 Catch:{ all -> 0x00c8 }
            r17.unlock();
            r17.postWriteCleanup();
            return r15;
        L_0x0081:
            r11 = r11.getNext();	 Catch:{ all -> 0x00c8 }
            goto L_0x0027;	 Catch:{ all -> 0x00c8 }
        L_0x0086:
            r4 = 1;	 Catch:{ all -> 0x00c8 }
            r14 = 0;	 Catch:{ all -> 0x00c8 }
        L_0x0088:
            if (r4 == 0) goto L_0x00a0;	 Catch:{ all -> 0x00c8 }
        L_0x008a:
            r12 = new org.roboguice.shaded.goole.common.cache.LocalCache$LoadingValueReference;	 Catch:{ all -> 0x00c8 }
            r12.<init>();	 Catch:{ all -> 0x00c8 }
            if (r11 != 0) goto L_0x009c;	 Catch:{ all -> 0x00c8 }
        L_0x0091:
            r11 = r1.newEntry(r2, r3, r10);	 Catch:{ all -> 0x00c8 }
            r11.setValueReference(r12);	 Catch:{ all -> 0x00c8 }
            r8.set(r9, r11);	 Catch:{ all -> 0x00c8 }
            goto L_0x00a1;	 Catch:{ all -> 0x00c8 }
        L_0x009c:
            r11.setValueReference(r12);	 Catch:{ all -> 0x00c8 }
            goto L_0x00a1;
        L_0x00a0:
            r12 = 0;
        L_0x00a1:
            r17.unlock();
            r17.postWriteCleanup();
            if (r4 == 0) goto L_0x00c3;
        L_0x00a9:
            monitor-enter(r11);	 Catch:{ all -> 0x00bb }
            r4 = r20;
            r2 = r1.loadSync(r2, r3, r12, r4);	 Catch:{ all -> 0x00b7 }
            monitor-exit(r11);	 Catch:{ all -> 0x00b7 }
            r3 = r1.statsCounter;
            r3.recordMisses(r7);
            return r2;
        L_0x00b7:
            r0 = move-exception;
            r2 = r0;
            monitor-exit(r11);	 Catch:{ all -> 0x00b7 }
            throw r2;	 Catch:{ all -> 0x00bb }
        L_0x00bb:
            r0 = move-exception;
            r2 = r0;
            r3 = r1.statsCounter;
            r3.recordMisses(r7);
            throw r2;
        L_0x00c3:
            r2 = r1.waitForLoadingValue(r11, r2, r14);
            return r2;
        L_0x00c8:
            r0 = move-exception;
            r2 = r0;
            r17.unlock();
            r17.postWriteCleanup();
            throw r2;
            */
            throw new UnsupportedOperationException("Method not decompiled: org.roboguice.shaded.goole.common.cache.LocalCache$Segment.lockedGetOrLoad(java.lang.Object, int, org.roboguice.shaded.goole.common.cache.CacheLoader):java.lang.Object");
        }

        /* Access modifiers changed, original: 0000 */
        public V waitForLoadingValue(ReferenceEntry<K, V> referenceEntry, K k, ValueReference<K, V> valueReference) throws ExecutionException {
            if (valueReference.isLoading()) {
                Preconditions.checkState(Thread.holdsLock(referenceEntry) ^ 1, "Recursive load of: %s", k);
                try {
                    V valueReference2 = valueReference2.waitForValue();
                    if (valueReference2 == null) {
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append("CacheLoader returned null for key ");
                        stringBuilder.append(k);
                        stringBuilder.append(".");
                        throw new InvalidCacheLoadException(stringBuilder.toString());
                    }
                    recordRead(referenceEntry, this.map.ticker.read());
                    return valueReference2;
                } finally {
                    this.statsCounter.recordMisses(1);
                }
            } else {
                throw new AssertionError();
            }
        }

        /* Access modifiers changed, original: 0000 */
        public V loadSync(K k, int i, LoadingValueReference<K, V> loadingValueReference, CacheLoader<? super K, V> cacheLoader) throws ExecutionException {
            return getAndRecordStats(k, i, loadingValueReference, loadingValueReference.loadFuture(k, cacheLoader));
        }

        /* Access modifiers changed, original: 0000 */
        public ListenableFuture<V> loadAsync(K k, int i, LoadingValueReference<K, V> loadingValueReference, CacheLoader<? super K, V> cacheLoader) {
            ListenableFuture loadFuture = loadingValueReference.loadFuture(k, cacheLoader);
            final K k2 = k;
            final int i2 = i;
            final LoadingValueReference<K, V> loadingValueReference2 = loadingValueReference;
            final ListenableFuture listenableFuture = loadFuture;
            loadFuture.addListener(new Runnable() {
                public void run() {
                    try {
                        Segment.this.getAndRecordStats(k2, i2, loadingValueReference2, listenableFuture);
                    } catch (Throwable th) {
                        LocalCache.logger.log(Level.WARNING, "Exception thrown during refresh", th);
                        loadingValueReference2.setException(th);
                    }
                }
            }, LocalCache.sameThreadExecutor);
            return loadFuture;
        }

        /* Access modifiers changed, original: 0000 */
        /* JADX WARNING: Removed duplicated region for block: B:15:0x0043  */
        public V getAndRecordStats(K r4, int r5, org.roboguice.shaded.goole.common.cache.LocalCache.LoadingValueReference<K, V> r6, org.roboguice.shaded.goole.common.util.concurrent.ListenableFuture<V> r7) throws java.util.concurrent.ExecutionException {
            /*
            r3 = this;
            r7 = org.roboguice.shaded.goole.common.util.concurrent.Uninterruptibles.getUninterruptibly(r7);	 Catch:{ all -> 0x003f }
            if (r7 != 0) goto L_0x0024;
        L_0x0006:
            r0 = new org.roboguice.shaded.goole.common.cache.CacheLoader$InvalidCacheLoadException;	 Catch:{ all -> 0x0022 }
            r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0022 }
            r1.<init>();	 Catch:{ all -> 0x0022 }
            r2 = "CacheLoader returned null for key ";
            r1.append(r2);	 Catch:{ all -> 0x0022 }
            r1.append(r4);	 Catch:{ all -> 0x0022 }
            r2 = ".";
            r1.append(r2);	 Catch:{ all -> 0x0022 }
            r1 = r1.toString();	 Catch:{ all -> 0x0022 }
            r0.<init>(r1);	 Catch:{ all -> 0x0022 }
            throw r0;	 Catch:{ all -> 0x0022 }
        L_0x0022:
            r0 = move-exception;
            goto L_0x0041;
        L_0x0024:
            r0 = r3.statsCounter;	 Catch:{ all -> 0x0022 }
            r1 = r6.elapsedNanos();	 Catch:{ all -> 0x0022 }
            r0.recordLoadSuccess(r1);	 Catch:{ all -> 0x0022 }
            r3.storeLoadedValue(r4, r5, r6, r7);	 Catch:{ all -> 0x0022 }
            if (r7 != 0) goto L_0x003e;
        L_0x0032:
            r0 = r3.statsCounter;
            r1 = r6.elapsedNanos();
            r0.recordLoadException(r1);
            r3.removeLoadingValue(r4, r5, r6);
        L_0x003e:
            return r7;
        L_0x003f:
            r0 = move-exception;
            r7 = 0;
        L_0x0041:
            if (r7 != 0) goto L_0x004f;
        L_0x0043:
            r7 = r3.statsCounter;
            r1 = r6.elapsedNanos();
            r7.recordLoadException(r1);
            r3.removeLoadingValue(r4, r5, r6);
        L_0x004f:
            throw r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: org.roboguice.shaded.goole.common.cache.LocalCache$Segment.getAndRecordStats(java.lang.Object, int, org.roboguice.shaded.goole.common.cache.LocalCache$LoadingValueReference, org.roboguice.shaded.goole.common.util.concurrent.ListenableFuture):java.lang.Object");
        }

        /* Access modifiers changed, original: 0000 */
        public V scheduleRefresh(ReferenceEntry<K, V> referenceEntry, K k, int i, V v, long j, CacheLoader<? super K, V> cacheLoader) {
            if (this.map.refreshes() && j - referenceEntry.getWriteTime() > this.map.refreshNanos && !referenceEntry.getValueReference().isLoading()) {
                Object refresh = refresh(k, i, cacheLoader, true);
                if (refresh != null) {
                    return refresh;
                }
            }
            return v;
        }

        /* Access modifiers changed, original: 0000 */
        @Nullable
        public V refresh(K k, int i, CacheLoader<? super K, V> cacheLoader, boolean z) {
            LoadingValueReference insertLoadingValueReference = insertLoadingValueReference(k, i, z);
            if (insertLoadingValueReference == null) {
                return null;
            }
            ListenableFuture loadAsync = loadAsync(k, i, insertLoadingValueReference, cacheLoader);
            if (loadAsync.isDone()) {
                try {
                    return Uninterruptibles.getUninterruptibly(loadAsync);
                } catch (Throwable unused) {
                }
            }
            return null;
        }

        /* Access modifiers changed, original: 0000 */
        @Nullable
        public LoadingValueReference<K, V> insertLoadingValueReference(K k, int i, boolean z) {
            lock();
            try {
                long read = this.map.ticker.read();
                preWriteCleanup(read);
                AtomicReferenceArray atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                ReferenceEntry referenceEntry = (ReferenceEntry) atomicReferenceArray.get(length);
                ReferenceEntry referenceEntry2 = referenceEntry;
                while (referenceEntry2 != null) {
                    Object key = referenceEntry2.getKey();
                    if (referenceEntry2.getHash() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        ValueReference valueReference = referenceEntry2.getValueReference();
                        if (!valueReference.isLoading()) {
                            if (!z || read - referenceEntry2.getWriteTime() >= this.map.refreshNanos) {
                                this.modCount++;
                                LoadingValueReference loadingValueReference = new LoadingValueReference(valueReference);
                                referenceEntry2.setValueReference(loadingValueReference);
                                unlock();
                                postWriteCleanup();
                                return loadingValueReference;
                            }
                        }
                        unlock();
                        postWriteCleanup();
                        return null;
                    }
                    referenceEntry2 = referenceEntry2.getNext();
                }
                this.modCount++;
                LoadingValueReference loadingValueReference2 = new LoadingValueReference();
                ReferenceEntry newEntry = newEntry(k, i, referenceEntry);
                newEntry.setValueReference(loadingValueReference2);
                atomicReferenceArray.set(length, newEntry);
                unlock();
                postWriteCleanup();
                return loadingValueReference2;
            } catch (Throwable th) {
                unlock();
                postWriteCleanup();
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void tryDrainReferenceQueues() {
            if (tryLock()) {
                try {
                    drainReferenceQueues();
                } finally {
                    unlock();
                }
            }
        }

        /* Access modifiers changed, original: 0000 */
        @GuardedBy("Segment.this")
        public void drainReferenceQueues() {
            if (this.map.usesKeyReferences()) {
                drainKeyReferenceQueue();
            }
            if (this.map.usesValueReferences()) {
                drainValueReferenceQueue();
            }
        }

        /* Access modifiers changed, original: 0000 */
        @GuardedBy("Segment.this")
        public void drainKeyReferenceQueue() {
            int i = 0;
            do {
                Reference poll = this.keyReferenceQueue.poll();
                if (poll != null) {
                    this.map.reclaimKey((ReferenceEntry) poll);
                    i++;
                } else {
                    return;
                }
            } while (i != 16);
        }

        /* Access modifiers changed, original: 0000 */
        @GuardedBy("Segment.this")
        public void drainValueReferenceQueue() {
            int i = 0;
            do {
                Reference poll = this.valueReferenceQueue.poll();
                if (poll != null) {
                    this.map.reclaimValue((ValueReference) poll);
                    i++;
                } else {
                    return;
                }
            } while (i != 16);
        }

        /* Access modifiers changed, original: 0000 */
        public void clearReferenceQueues() {
            if (this.map.usesKeyReferences()) {
                clearKeyReferenceQueue();
            }
            if (this.map.usesValueReferences()) {
                clearValueReferenceQueue();
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void clearKeyReferenceQueue() {
            while (this.keyReferenceQueue.poll() != null) {
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void clearValueReferenceQueue() {
            while (this.valueReferenceQueue.poll() != null) {
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void recordRead(ReferenceEntry<K, V> referenceEntry, long j) {
            if (this.map.recordsAccess()) {
                referenceEntry.setAccessTime(j);
            }
            this.recencyQueue.add(referenceEntry);
        }

        /* Access modifiers changed, original: 0000 */
        @GuardedBy("Segment.this")
        public void recordLockedRead(ReferenceEntry<K, V> referenceEntry, long j) {
            if (this.map.recordsAccess()) {
                referenceEntry.setAccessTime(j);
            }
            this.accessQueue.add(referenceEntry);
        }

        /* Access modifiers changed, original: 0000 */
        @GuardedBy("Segment.this")
        public void recordWrite(ReferenceEntry<K, V> referenceEntry, int i, long j) {
            drainRecencyQueue();
            this.totalWeight += i;
            if (this.map.recordsAccess()) {
                referenceEntry.setAccessTime(j);
            }
            if (this.map.recordsWrite()) {
                referenceEntry.setWriteTime(j);
            }
            this.accessQueue.add(referenceEntry);
            this.writeQueue.add(referenceEntry);
        }

        /* Access modifiers changed, original: 0000 */
        @GuardedBy("Segment.this")
        public void drainRecencyQueue() {
            while (true) {
                ReferenceEntry referenceEntry = (ReferenceEntry) this.recencyQueue.poll();
                if (referenceEntry == null) {
                    return;
                }
                if (this.accessQueue.contains(referenceEntry)) {
                    this.accessQueue.add(referenceEntry);
                }
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void tryExpireEntries(long j) {
            if (tryLock()) {
                try {
                    expireEntries(j);
                } finally {
                    unlock();
                }
            }
        }

        /* Access modifiers changed, original: 0000 */
        @GuardedBy("Segment.this")
        public void expireEntries(long j) {
            drainRecencyQueue();
            ReferenceEntry referenceEntry;
            do {
                referenceEntry = (ReferenceEntry) this.writeQueue.peek();
                if (referenceEntry == null || !this.map.isExpired(referenceEntry, j)) {
                    do {
                        referenceEntry = (ReferenceEntry) this.accessQueue.peek();
                        if (referenceEntry == null || !this.map.isExpired(referenceEntry, j)) {
                            return;
                        }
                    } while (removeEntry(referenceEntry, referenceEntry.getHash(), RemovalCause.EXPIRED));
                    throw new AssertionError();
                }
            } while (removeEntry(referenceEntry, referenceEntry.getHash(), RemovalCause.EXPIRED));
            throw new AssertionError();
        }

        /* Access modifiers changed, original: 0000 */
        @GuardedBy("Segment.this")
        public void enqueueNotification(ReferenceEntry<K, V> referenceEntry, RemovalCause removalCause) {
            enqueueNotification(referenceEntry.getKey(), referenceEntry.getHash(), referenceEntry.getValueReference(), removalCause);
        }

        /* Access modifiers changed, original: 0000 */
        @GuardedBy("Segment.this")
        public void enqueueNotification(@Nullable K k, int i, ValueReference<K, V> valueReference, RemovalCause removalCause) {
            this.totalWeight -= valueReference.getWeight();
            if (removalCause.wasEvicted()) {
                this.statsCounter.recordEviction();
            }
            if (this.map.removalNotificationQueue != LocalCache.DISCARDING_QUEUE) {
                this.map.removalNotificationQueue.offer(new RemovalNotification(k, valueReference.get(), removalCause));
            }
        }

        /* Access modifiers changed, original: 0000 */
        @GuardedBy("Segment.this")
        public void evictEntries() {
            if (this.map.evictsBySize()) {
                drainRecencyQueue();
                while (((long) this.totalWeight) > this.maxSegmentWeight) {
                    ReferenceEntry nextEvictable = getNextEvictable();
                    if (!removeEntry(nextEvictable, nextEvictable.getHash(), RemovalCause.SIZE)) {
                        throw new AssertionError();
                    }
                }
            }
        }

        /* Access modifiers changed, original: 0000 */
        public ReferenceEntry<K, V> getNextEvictable() {
            for (ReferenceEntry referenceEntry : this.accessQueue) {
                if (referenceEntry.getValueReference().getWeight() > 0) {
                    return referenceEntry;
                }
            }
            throw new AssertionError();
        }

        /* Access modifiers changed, original: 0000 */
        public ReferenceEntry<K, V> getFirst(int i) {
            AtomicReferenceArray atomicReferenceArray = this.table;
            return (ReferenceEntry) atomicReferenceArray.get(i & (atomicReferenceArray.length() - 1));
        }

        /* Access modifiers changed, original: 0000 */
        @Nullable
        public ReferenceEntry<K, V> getEntry(Object obj, int i) {
            for (ReferenceEntry first = getFirst(i); first != null; first = first.getNext()) {
                if (first.getHash() == i) {
                    Object key = first.getKey();
                    if (key == null) {
                        tryDrainReferenceQueues();
                    } else if (this.map.keyEquivalence.equivalent(obj, key)) {
                        return first;
                    }
                }
            }
            return null;
        }

        /* Access modifiers changed, original: 0000 */
        @Nullable
        public ReferenceEntry<K, V> getLiveEntry(Object obj, int i, long j) {
            ReferenceEntry entry = getEntry(obj, i);
            if (entry == null) {
                return null;
            }
            if (!this.map.isExpired(entry, j)) {
                return entry;
            }
            tryExpireEntries(j);
            return null;
        }

        /* Access modifiers changed, original: 0000 */
        public V getLiveValue(ReferenceEntry<K, V> referenceEntry, long j) {
            if (referenceEntry.getKey() == null) {
                tryDrainReferenceQueues();
                return null;
            }
            Object obj = referenceEntry.getValueReference().get();
            if (obj == null) {
                tryDrainReferenceQueues();
                return null;
            } else if (!this.map.isExpired(referenceEntry, j)) {
                return obj;
            } else {
                tryExpireEntries(j);
                return null;
            }
        }

        /* Access modifiers changed, original: 0000 */
        @Nullable
        public V get(Object obj, int i) {
            try {
                V v = null;
                if (this.count != 0) {
                    long read = this.map.ticker.read();
                    ReferenceEntry liveEntry = getLiveEntry(obj, i, read);
                    if (liveEntry == null) {
                        return v;
                    }
                    Object obj2 = liveEntry.getValueReference().get();
                    if (obj2 != null) {
                        recordRead(liveEntry, read);
                        obj = scheduleRefresh(liveEntry, liveEntry.getKey(), i, obj2, read, this.map.defaultLoader);
                        postReadCleanup();
                        return obj;
                    }
                    tryDrainReferenceQueues();
                }
                postReadCleanup();
                return v;
            } finally {
                postReadCleanup();
            }
        }

        /* Access modifiers changed, original: 0000 */
        public boolean containsKey(Object obj, int i) {
            try {
                boolean z = false;
                if (this.count != 0) {
                    ReferenceEntry liveEntry = getLiveEntry(obj, i, this.map.ticker.read());
                    if (liveEntry == null) {
                        return z;
                    }
                    if (liveEntry.getValueReference().get() != null) {
                        z = true;
                    }
                    postReadCleanup();
                    return z;
                }
                postReadCleanup();
                return z;
            } finally {
                postReadCleanup();
            }
        }

        /* Access modifiers changed, original: 0000 */
        @VisibleForTesting
        public boolean containsValue(Object obj) {
            try {
                if (this.count != 0) {
                    long read = this.map.ticker.read();
                    AtomicReferenceArray atomicReferenceArray = this.table;
                    int length = atomicReferenceArray.length();
                    for (int i = 0; i < length; i++) {
                        for (ReferenceEntry referenceEntry = (ReferenceEntry) atomicReferenceArray.get(i); referenceEntry != null; referenceEntry = referenceEntry.getNext()) {
                            Object liveValue = getLiveValue(referenceEntry, read);
                            if (liveValue != null) {
                                if (this.map.valueEquivalence.equivalent(obj, liveValue)) {
                                    return true;
                                }
                            }
                        }
                    }
                }
                postReadCleanup();
                return false;
            } finally {
                postReadCleanup();
            }
        }

        /* Access modifiers changed, original: 0000 */
        @Nullable
        public V put(K k, int i, V v, boolean z) {
            lock();
            try {
                long read = this.map.ticker.read();
                preWriteCleanup(read);
                if (this.count + 1 > this.threshold) {
                    expand();
                    int i2 = this.count;
                }
                AtomicReferenceArray atomicReferenceArray = this.table;
                int length = i & (atomicReferenceArray.length() - 1);
                ReferenceEntry referenceEntry = (ReferenceEntry) atomicReferenceArray.get(length);
                for (ReferenceEntry referenceEntry2 = referenceEntry; referenceEntry2 != null; referenceEntry2 = referenceEntry2.getNext()) {
                    Object key = referenceEntry2.getKey();
                    if (referenceEntry2.getHash() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        ValueReference valueReference = referenceEntry2.getValueReference();
                        Object obj = valueReference.get();
                        if (obj == null) {
                            int i3;
                            this.modCount++;
                            if (valueReference.isActive()) {
                                enqueueNotification(k, i, valueReference, RemovalCause.COLLECTED);
                                setValue(referenceEntry2, k, v, read);
                                i3 = this.count;
                            } else {
                                setValue(referenceEntry2, k, v, read);
                                i3 = this.count + 1;
                            }
                            this.count = i3;
                            evictEntries();
                            unlock();
                            postWriteCleanup();
                            return null;
                        }
                        if (z) {
                            recordLockedRead(referenceEntry2, read);
                        } else {
                            this.modCount++;
                            enqueueNotification(k, i, valueReference, RemovalCause.REPLACED);
                            setValue(referenceEntry2, k, v, read);
                            evictEntries();
                        }
                        unlock();
                        postWriteCleanup();
                        return obj;
                    }
                }
                this.modCount++;
                ReferenceEntry newEntry = newEntry(k, i, referenceEntry);
                setValue(newEntry, k, v, read);
                atomicReferenceArray.set(length, newEntry);
                this.count++;
                evictEntries();
                unlock();
                postWriteCleanup();
                return null;
            } catch (Throwable th) {
                unlock();
                postWriteCleanup();
            }
        }

        /* Access modifiers changed, original: 0000 */
        @GuardedBy("Segment.this")
        public void expand() {
            AtomicReferenceArray atomicReferenceArray = this.table;
            int length = atomicReferenceArray.length();
            if (length < 1073741824) {
                int i = this.count;
                AtomicReferenceArray newEntryArray = newEntryArray(length << 1);
                this.threshold = (newEntryArray.length() * 3) / 4;
                int length2 = newEntryArray.length() - 1;
                for (int i2 = 0; i2 < length; i2++) {
                    ReferenceEntry referenceEntry = (ReferenceEntry) atomicReferenceArray.get(i2);
                    if (referenceEntry != null) {
                        ReferenceEntry next = referenceEntry.getNext();
                        int hash = referenceEntry.getHash() & length2;
                        if (next == null) {
                            newEntryArray.set(hash, referenceEntry);
                        } else {
                            ReferenceEntry referenceEntry2 = referenceEntry;
                            while (next != null) {
                                int hash2 = next.getHash() & length2;
                                if (hash2 != hash) {
                                    referenceEntry2 = next;
                                    hash = hash2;
                                }
                                next = next.getNext();
                            }
                            newEntryArray.set(hash, referenceEntry2);
                            while (referenceEntry != referenceEntry2) {
                                int hash3 = referenceEntry.getHash() & length2;
                                ReferenceEntry copyEntry = copyEntry(referenceEntry, (ReferenceEntry) newEntryArray.get(hash3));
                                if (copyEntry != null) {
                                    newEntryArray.set(hash3, copyEntry);
                                } else {
                                    removeCollectedEntry(referenceEntry);
                                    i--;
                                }
                                referenceEntry = referenceEntry.getNext();
                            }
                        }
                    }
                }
                this.table = newEntryArray;
                this.count = i;
            }
        }

        /* Access modifiers changed, original: 0000 */
        public boolean replace(K k, int i, V v, V v2) {
            K k2 = k;
            int i2 = i;
            lock();
            try {
                long read = this.map.ticker.read();
                preWriteCleanup(read);
                AtomicReferenceArray atomicReferenceArray = this.table;
                int length = i2 & (atomicReferenceArray.length() - 1);
                ReferenceEntry referenceEntry = (ReferenceEntry) atomicReferenceArray.get(length);
                for (ReferenceEntry referenceEntry2 = referenceEntry; referenceEntry2 != null; referenceEntry2 = referenceEntry2.getNext()) {
                    Object key = referenceEntry2.getKey();
                    if (referenceEntry2.getHash() == i2 && key != null && this.map.keyEquivalence.equivalent(k2, key)) {
                        ValueReference valueReference = referenceEntry2.getValueReference();
                        Object obj = valueReference.get();
                        if (obj == null) {
                            if (valueReference.isActive()) {
                                int i3 = this.count;
                                this.modCount++;
                                ReferenceEntry removeValueFromChain = removeValueFromChain(referenceEntry, referenceEntry2, key, i2, valueReference, RemovalCause.COLLECTED);
                                int i4 = this.count - 1;
                                atomicReferenceArray.set(length, removeValueFromChain);
                                this.count = i4;
                            }
                        } else if (this.map.valueEquivalence.equivalent(v, obj)) {
                            this.modCount++;
                            enqueueNotification(k2, i2, valueReference, RemovalCause.REPLACED);
                            setValue(referenceEntry2, k2, v2, read);
                            evictEntries();
                            unlock();
                            postWriteCleanup();
                            return true;
                        } else {
                            recordLockedRead(referenceEntry2, read);
                        }
                        unlock();
                        postWriteCleanup();
                        return false;
                    }
                    V v3 = v;
                }
                unlock();
                postWriteCleanup();
                return false;
            } catch (Throwable th) {
                Throwable th2 = th;
                unlock();
                postWriteCleanup();
            }
        }

        /* Access modifiers changed, original: 0000 */
        @Nullable
        public V replace(K k, int i, V v) {
            K k2 = k;
            int i2 = i;
            lock();
            try {
                long read = this.map.ticker.read();
                preWriteCleanup(read);
                AtomicReferenceArray atomicReferenceArray = this.table;
                int length = i2 & (atomicReferenceArray.length() - 1);
                ReferenceEntry referenceEntry = (ReferenceEntry) atomicReferenceArray.get(length);
                for (ReferenceEntry referenceEntry2 = referenceEntry; referenceEntry2 != null; referenceEntry2 = referenceEntry2.getNext()) {
                    Object key = referenceEntry2.getKey();
                    if (referenceEntry2.getHash() == i2 && key != null && this.map.keyEquivalence.equivalent(k2, key)) {
                        ValueReference valueReference = referenceEntry2.getValueReference();
                        Object obj = valueReference.get();
                        if (obj == null) {
                            if (valueReference.isActive()) {
                                int i3 = this.count;
                                this.modCount++;
                                ReferenceEntry removeValueFromChain = removeValueFromChain(referenceEntry, referenceEntry2, key, i2, valueReference, RemovalCause.COLLECTED);
                                int i4 = this.count - 1;
                                atomicReferenceArray.set(length, removeValueFromChain);
                                this.count = i4;
                            }
                            unlock();
                            postWriteCleanup();
                            return null;
                        }
                        this.modCount++;
                        enqueueNotification(k2, i2, valueReference, RemovalCause.REPLACED);
                        setValue(referenceEntry2, k2, v, read);
                        evictEntries();
                        unlock();
                        postWriteCleanup();
                        return obj;
                    }
                }
                unlock();
                postWriteCleanup();
                return null;
            } catch (Throwable th) {
                Throwable th2 = th;
                unlock();
                postWriteCleanup();
            }
        }

        /* Access modifiers changed, original: 0000 */
        @Nullable
        public V remove(Object obj, int i) {
            lock();
            try {
                preWriteCleanup(this.map.ticker.read());
                int i2 = this.count;
                AtomicReferenceArray atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                ReferenceEntry referenceEntry = (ReferenceEntry) atomicReferenceArray.get(length);
                for (ReferenceEntry referenceEntry2 = referenceEntry; referenceEntry2 != null; referenceEntry2 = referenceEntry2.getNext()) {
                    Object key = referenceEntry2.getKey();
                    if (referenceEntry2.getHash() == i && key != null && this.map.keyEquivalence.equivalent(obj, key)) {
                        RemovalCause removalCause;
                        ValueReference valueReference = referenceEntry2.getValueReference();
                        V v = valueReference.get();
                        if (v != null) {
                            removalCause = RemovalCause.EXPLICIT;
                        } else {
                            if (valueReference.isActive()) {
                                removalCause = RemovalCause.COLLECTED;
                            }
                            unlock();
                            postWriteCleanup();
                            return null;
                        }
                        RemovalCause removalCause2 = removalCause;
                        this.modCount++;
                        int i3 = this.count - 1;
                        atomicReferenceArray.set(length, removeValueFromChain(referenceEntry, referenceEntry2, key, i, valueReference, removalCause2));
                        this.count = i3;
                        return v;
                    }
                }
                unlock();
                postWriteCleanup();
                return null;
            } finally {
                unlock();
                postWriteCleanup();
            }
        }

        /* Access modifiers changed, original: 0000 */
        public boolean storeLoadedValue(K k, int i, LoadingValueReference<K, V> loadingValueReference, V v) {
            lock();
            long read = this.map.ticker.read();
            preWriteCleanup(read);
            int i2 = this.count + 1;
            if (i2 > this.threshold) {
                expand();
                i2 = this.count + 1;
            }
            AtomicReferenceArray atomicReferenceArray = this.table;
            int length = i & (atomicReferenceArray.length() - 1);
            ReferenceEntry referenceEntry = (ReferenceEntry) atomicReferenceArray.get(length);
            ReferenceEntry referenceEntry2 = referenceEntry;
            while (referenceEntry2 != null) {
                Object key = referenceEntry2.getKey();
                if (referenceEntry2.getHash() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                    ValueReference valueReference = referenceEntry2.getValueReference();
                    key = valueReference.get();
                    if (loadingValueReference != valueReference) {
                        if (key != null || valueReference == LocalCache.UNSET) {
                            enqueueNotification(k, i, new WeightedStrongValueReference(v, 0), RemovalCause.REPLACED);
                            unlock();
                            postWriteCleanup();
                            return false;
                        }
                    }
                    this.modCount++;
                    if (loadingValueReference.isActive()) {
                        enqueueNotification(k, i, loadingValueReference, key == null ? RemovalCause.COLLECTED : RemovalCause.REPLACED);
                        i2--;
                    }
                    setValue(referenceEntry2, k, v, read);
                    this.count = i2;
                    evictEntries();
                    unlock();
                    postWriteCleanup();
                    return true;
                }
                try {
                    referenceEntry2 = referenceEntry2.getNext();
                } catch (Throwable th) {
                    unlock();
                    postWriteCleanup();
                }
            }
            this.modCount++;
            ReferenceEntry newEntry = newEntry(k, i, referenceEntry);
            setValue(newEntry, k, v, read);
            atomicReferenceArray.set(length, newEntry);
            this.count = i2;
            evictEntries();
            unlock();
            postWriteCleanup();
            return true;
        }

        /* Access modifiers changed, original: 0000 */
        public boolean remove(Object obj, int i, Object obj2) {
            lock();
            try {
                preWriteCleanup(this.map.ticker.read());
                int i2 = this.count;
                AtomicReferenceArray atomicReferenceArray = this.table;
                boolean z = true;
                int length = (atomicReferenceArray.length() - 1) & i;
                ReferenceEntry referenceEntry = (ReferenceEntry) atomicReferenceArray.get(length);
                for (ReferenceEntry referenceEntry2 = referenceEntry; referenceEntry2 != null; referenceEntry2 = referenceEntry2.getNext()) {
                    Object key = referenceEntry2.getKey();
                    if (referenceEntry2.getHash() == i && key != null && this.map.keyEquivalence.equivalent(obj, key)) {
                        RemovalCause removalCause;
                        ValueReference valueReference = referenceEntry2.getValueReference();
                        obj = valueReference.get();
                        if (this.map.valueEquivalence.equivalent(obj2, obj)) {
                            removalCause = RemovalCause.EXPLICIT;
                        } else {
                            if (obj == null && valueReference.isActive()) {
                                removalCause = RemovalCause.COLLECTED;
                            }
                            unlock();
                            postWriteCleanup();
                            return false;
                        }
                        this.modCount++;
                        int i3 = this.count - 1;
                        atomicReferenceArray.set(length, removeValueFromChain(referenceEntry, referenceEntry2, key, i, valueReference, removalCause));
                        this.count = i3;
                        if (removalCause != RemovalCause.EXPLICIT) {
                            z = false;
                        }
                        unlock();
                        postWriteCleanup();
                        return z;
                    }
                }
                unlock();
                postWriteCleanup();
                return false;
            } catch (Throwable th) {
                unlock();
                postWriteCleanup();
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void clear() {
            if (this.count != 0) {
                lock();
                try {
                    int i;
                    AtomicReferenceArray atomicReferenceArray = this.table;
                    for (i = 0; i < atomicReferenceArray.length(); i++) {
                        for (ReferenceEntry referenceEntry = (ReferenceEntry) atomicReferenceArray.get(i); referenceEntry != null; referenceEntry = referenceEntry.getNext()) {
                            if (referenceEntry.getValueReference().isActive()) {
                                enqueueNotification(referenceEntry, RemovalCause.EXPLICIT);
                            }
                        }
                    }
                    for (i = 0; i < atomicReferenceArray.length(); i++) {
                        atomicReferenceArray.set(i, null);
                    }
                    clearReferenceQueues();
                    this.writeQueue.clear();
                    this.accessQueue.clear();
                    this.readCount.set(0);
                    this.modCount++;
                    this.count = 0;
                } finally {
                    unlock();
                    postWriteCleanup();
                }
            }
        }

        /* Access modifiers changed, original: 0000 */
        @GuardedBy("Segment.this")
        @Nullable
        public ReferenceEntry<K, V> removeValueFromChain(ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2, @Nullable K k, int i, ValueReference<K, V> valueReference, RemovalCause removalCause) {
            enqueueNotification(k, i, valueReference, removalCause);
            this.writeQueue.remove(referenceEntry2);
            this.accessQueue.remove(referenceEntry2);
            if (!valueReference.isLoading()) {
                return removeEntryFromChain(referenceEntry, referenceEntry2);
            }
            valueReference.notifyNewValue(null);
            return referenceEntry;
        }

        /* Access modifiers changed, original: 0000 */
        @GuardedBy("Segment.this")
        @Nullable
        public ReferenceEntry<K, V> removeEntryFromChain(ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
            int i = this.count;
            ReferenceEntry next = referenceEntry2.getNext();
            while (referenceEntry != referenceEntry2) {
                ReferenceEntry copyEntry = copyEntry(referenceEntry, next);
                if (copyEntry != null) {
                    next = copyEntry;
                } else {
                    removeCollectedEntry(referenceEntry);
                    i--;
                }
                referenceEntry = referenceEntry.getNext();
            }
            this.count = i;
            return next;
        }

        /* Access modifiers changed, original: 0000 */
        @GuardedBy("Segment.this")
        public void removeCollectedEntry(ReferenceEntry<K, V> referenceEntry) {
            enqueueNotification(referenceEntry, RemovalCause.COLLECTED);
            this.writeQueue.remove(referenceEntry);
            this.accessQueue.remove(referenceEntry);
        }

        /* Access modifiers changed, original: 0000 */
        public boolean reclaimKey(ReferenceEntry<K, V> referenceEntry, int i) {
            lock();
            try {
                int i2 = this.count;
                AtomicReferenceArray atomicReferenceArray = this.table;
                boolean z = true;
                int length = (atomicReferenceArray.length() - z) & i;
                ReferenceEntry<K, V> referenceEntry2 = (ReferenceEntry) atomicReferenceArray.get(length);
                for (ReferenceEntry<K, V> referenceEntry3 = referenceEntry2; referenceEntry3 != null; referenceEntry3 = referenceEntry3.getNext()) {
                    if (referenceEntry3 == referenceEntry) {
                        this.modCount += z;
                        i = this.count - z;
                        atomicReferenceArray.set(length, removeValueFromChain(referenceEntry2, referenceEntry3, referenceEntry3.getKey(), i, referenceEntry3.getValueReference(), RemovalCause.COLLECTED));
                        this.count = i;
                        return z;
                    }
                }
                unlock();
                postWriteCleanup();
                return false;
            } finally {
                unlock();
                postWriteCleanup();
            }
        }

        /* Access modifiers changed, original: 0000 */
        public boolean reclaimValue(K k, int i, ValueReference<K, V> valueReference) {
            lock();
            try {
                int i2 = this.count;
                AtomicReferenceArray atomicReferenceArray = this.table;
                boolean z = true;
                int length = (atomicReferenceArray.length() - z) & i;
                ReferenceEntry referenceEntry = (ReferenceEntry) atomicReferenceArray.get(length);
                ReferenceEntry referenceEntry2 = referenceEntry;
                while (referenceEntry2 != null) {
                    Object key = referenceEntry2.getKey();
                    if (referenceEntry2.getHash() != i || key == null || !this.map.keyEquivalence.equivalent(k, key)) {
                        referenceEntry2 = referenceEntry2.getNext();
                    } else if (referenceEntry2.getValueReference() == valueReference) {
                        this.modCount += z;
                        i = this.count - z;
                        atomicReferenceArray.set(length, removeValueFromChain(referenceEntry, referenceEntry2, key, i, valueReference, RemovalCause.COLLECTED));
                        this.count = i;
                        return z;
                    } else {
                        unlock();
                        if (!isHeldByCurrentThread()) {
                            postWriteCleanup();
                        }
                        return false;
                    }
                }
                unlock();
                if (!isHeldByCurrentThread()) {
                    postWriteCleanup();
                }
                return false;
            } finally {
                unlock();
                if (!isHeldByCurrentThread()) {
                    postWriteCleanup();
                }
            }
        }

        /* Access modifiers changed, original: 0000 */
        public boolean removeLoadingValue(K k, int i, LoadingValueReference<K, V> loadingValueReference) {
            lock();
            try {
                AtomicReferenceArray atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                ReferenceEntry referenceEntry = (ReferenceEntry) atomicReferenceArray.get(length);
                for (ReferenceEntry referenceEntry2 = referenceEntry; referenceEntry2 != null; referenceEntry2 = referenceEntry2.getNext()) {
                    Object key = referenceEntry2.getKey();
                    if (referenceEntry2.getHash() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        if (referenceEntry2.getValueReference() == loadingValueReference) {
                            if (loadingValueReference.isActive()) {
                                referenceEntry2.setValueReference(loadingValueReference.getOldValue());
                            } else {
                                atomicReferenceArray.set(length, removeEntryFromChain(referenceEntry, referenceEntry2));
                            }
                            unlock();
                            postWriteCleanup();
                            return true;
                        }
                        unlock();
                        postWriteCleanup();
                        return false;
                    }
                }
                unlock();
                postWriteCleanup();
                return false;
            } catch (Throwable th) {
                unlock();
                postWriteCleanup();
            }
        }

        /* Access modifiers changed, original: 0000 */
        @GuardedBy("Segment.this")
        public boolean removeEntry(ReferenceEntry<K, V> referenceEntry, int i, RemovalCause removalCause) {
            int i2 = this.count;
            AtomicReferenceArray atomicReferenceArray = this.table;
            int length = (atomicReferenceArray.length() - 1) & i;
            ReferenceEntry<K, V> referenceEntry2 = (ReferenceEntry) atomicReferenceArray.get(length);
            for (ReferenceEntry<K, V> referenceEntry3 = referenceEntry2; referenceEntry3 != null; referenceEntry3 = referenceEntry3.getNext()) {
                if (referenceEntry3 == referenceEntry) {
                    this.modCount++;
                    i = this.count - 1;
                    atomicReferenceArray.set(length, removeValueFromChain(referenceEntry2, referenceEntry3, referenceEntry3.getKey(), i, referenceEntry3.getValueReference(), removalCause));
                    this.count = i;
                    return true;
                }
            }
            return false;
        }

        /* Access modifiers changed, original: 0000 */
        public void postReadCleanup() {
            if ((this.readCount.incrementAndGet() & 63) == 0) {
                cleanUp();
            }
        }

        /* Access modifiers changed, original: 0000 */
        @GuardedBy("Segment.this")
        public void preWriteCleanup(long j) {
            runLockedCleanup(j);
        }

        /* Access modifiers changed, original: 0000 */
        public void postWriteCleanup() {
            runUnlockedCleanup();
        }

        /* Access modifiers changed, original: 0000 */
        public void cleanUp() {
            runLockedCleanup(this.map.ticker.read());
            runUnlockedCleanup();
        }

        /* Access modifiers changed, original: 0000 */
        public void runLockedCleanup(long j) {
            if (tryLock()) {
                try {
                    drainReferenceQueues();
                    expireEntries(j);
                    this.readCount.set(0);
                } finally {
                    unlock();
                }
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void runUnlockedCleanup() {
            if (!isHeldByCurrentThread()) {
                this.map.processPendingNotifications();
            }
        }
    }

    interface ValueReference<K, V> {
        ValueReference<K, V> copyFor(ReferenceQueue<V> referenceQueue, @Nullable V v, ReferenceEntry<K, V> referenceEntry);

        @Nullable
        V get();

        @Nullable
        ReferenceEntry<K, V> getEntry();

        int getWeight();

        boolean isActive();

        boolean isLoading();

        void notifyNewValue(@Nullable V v);

        V waitForValue() throws ExecutionException;
    }

    final class WriteThroughEntry implements Entry<K, V> {
        final K key;
        V value;

        WriteThroughEntry(K k, V v) {
            this.key = k;
            this.value = v;
        }

        public K getKey() {
            return this.key;
        }

        public V getValue() {
            return this.value;
        }

        public boolean equals(@Nullable Object obj) {
            boolean z = false;
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            if (this.key.equals(entry.getKey()) && this.value.equals(entry.getValue())) {
                z = true;
            }
            return z;
        }

        public int hashCode() {
            return this.key.hashCode() ^ this.value.hashCode();
        }

        public V setValue(V v) {
            throw new UnsupportedOperationException();
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(getKey());
            stringBuilder.append("=");
            stringBuilder.append(getValue());
            return stringBuilder.toString();
        }
    }

    static abstract class AbstractReferenceEntry<K, V> implements ReferenceEntry<K, V> {
        AbstractReferenceEntry() {
        }

        public ValueReference<K, V> getValueReference() {
            throw new UnsupportedOperationException();
        }

        public void setValueReference(ValueReference<K, V> valueReference) {
            throw new UnsupportedOperationException();
        }

        public ReferenceEntry<K, V> getNext() {
            throw new UnsupportedOperationException();
        }

        public int getHash() {
            throw new UnsupportedOperationException();
        }

        public K getKey() {
            throw new UnsupportedOperationException();
        }

        public long getAccessTime() {
            throw new UnsupportedOperationException();
        }

        public void setAccessTime(long j) {
            throw new UnsupportedOperationException();
        }

        public ReferenceEntry<K, V> getNextInAccessQueue() {
            throw new UnsupportedOperationException();
        }

        public void setNextInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }

        public ReferenceEntry<K, V> getPreviousInAccessQueue() {
            throw new UnsupportedOperationException();
        }

        public void setPreviousInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }

        public long getWriteTime() {
            throw new UnsupportedOperationException();
        }

        public void setWriteTime(long j) {
            throw new UnsupportedOperationException();
        }

        public ReferenceEntry<K, V> getNextInWriteQueue() {
            throw new UnsupportedOperationException();
        }

        public void setNextInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }

        public ReferenceEntry<K, V> getPreviousInWriteQueue() {
            throw new UnsupportedOperationException();
        }

        public void setPreviousInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }
    }

    static class LoadingValueReference<K, V> implements ValueReference<K, V> {
        final SettableFuture<V> futureValue;
        volatile ValueReference<K, V> oldValue;
        final Stopwatch stopwatch;

        public ValueReference<K, V> copyFor(ReferenceQueue<V> referenceQueue, @Nullable V v, ReferenceEntry<K, V> referenceEntry) {
            return this;
        }

        public ReferenceEntry<K, V> getEntry() {
            return null;
        }

        public boolean isLoading() {
            return true;
        }

        public LoadingValueReference() {
            this(LocalCache.unset());
        }

        public LoadingValueReference(ValueReference<K, V> valueReference) {
            this.futureValue = SettableFuture.create();
            this.stopwatch = Stopwatch.createUnstarted();
            this.oldValue = valueReference;
        }

        public boolean isActive() {
            return this.oldValue.isActive();
        }

        public int getWeight() {
            return this.oldValue.getWeight();
        }

        public boolean set(@Nullable V v) {
            return this.futureValue.set(v);
        }

        public boolean setException(Throwable th) {
            return this.futureValue.setException(th);
        }

        private ListenableFuture<V> fullyFailedFuture(Throwable th) {
            return Futures.immediateFailedFuture(th);
        }

        public void notifyNewValue(@Nullable V v) {
            if (v != null) {
                set(v);
            } else {
                this.oldValue = LocalCache.unset();
            }
        }

        public ListenableFuture<V> loadFuture(K k, CacheLoader<? super K, V> cacheLoader) {
            this.stopwatch.start();
            Object obj = this.oldValue.get();
            if (obj == null) {
                try {
                    Object load = cacheLoader.load(k);
                    return set(load) ? this.futureValue : Futures.immediateFuture(load);
                } catch (Throwable th) {
                    if (th instanceof InterruptedException) {
                        Thread.currentThread().interrupt();
                    }
                    return setException(th) ? this.futureValue : fullyFailedFuture(th);
                }
            }
            ListenableFuture reload = cacheLoader.reload(k, obj);
            if (reload == null) {
                return Futures.immediateFuture(null);
            }
            return Futures.transform(reload, new Function<V, V>() {
                public V apply(V v) {
                    LoadingValueReference.this.set(v);
                    return v;
                }
            });
        }

        public long elapsedNanos() {
            return this.stopwatch.elapsed(TimeUnit.NANOSECONDS);
        }

        public V waitForValue() throws ExecutionException {
            return Uninterruptibles.getUninterruptibly(this.futureValue);
        }

        public V get() {
            return this.oldValue.get();
        }

        public ValueReference<K, V> getOldValue() {
            return this.oldValue;
        }
    }

    static class LocalManualCache<K, V> implements Cache<K, V>, Serializable {
        private static final long serialVersionUID = 1;
        final LocalCache<K, V> localCache;

        /* synthetic */ LocalManualCache(LocalCache localCache, AnonymousClass1 anonymousClass1) {
            this(localCache);
        }

        LocalManualCache(CacheBuilder<? super K, ? super V> cacheBuilder) {
            this(new LocalCache(cacheBuilder, null));
        }

        private LocalManualCache(LocalCache<K, V> localCache) {
            this.localCache = localCache;
        }

        @Nullable
        public V getIfPresent(Object obj) {
            return this.localCache.getIfPresent(obj);
        }

        public V get(K k, final Callable<? extends V> callable) throws ExecutionException {
            Preconditions.checkNotNull(callable);
            return this.localCache.get(k, new CacheLoader<Object, V>() {
                public V load(Object obj) throws Exception {
                    return callable.call();
                }
            });
        }

        public ImmutableMap<K, V> getAllPresent(Iterable<?> iterable) {
            return this.localCache.getAllPresent(iterable);
        }

        public void put(K k, V v) {
            this.localCache.put(k, v);
        }

        public void putAll(Map<? extends K, ? extends V> map) {
            this.localCache.putAll(map);
        }

        public void invalidate(Object obj) {
            Preconditions.checkNotNull(obj);
            this.localCache.remove(obj);
        }

        public void invalidateAll(Iterable<?> iterable) {
            this.localCache.invalidateAll(iterable);
        }

        public void invalidateAll() {
            this.localCache.clear();
        }

        public long size() {
            return this.localCache.longSize();
        }

        public ConcurrentMap<K, V> asMap() {
            return this.localCache;
        }

        public CacheStats stats() {
            SimpleStatsCounter simpleStatsCounter = new SimpleStatsCounter();
            simpleStatsCounter.incrementBy(this.localCache.globalStatsCounter);
            for (Segment segment : this.localCache.segments) {
                simpleStatsCounter.incrementBy(segment.statsCounter);
            }
            return simpleStatsCounter.snapshot();
        }

        public void cleanUp() {
            this.localCache.cleanUp();
        }

        /* Access modifiers changed, original: 0000 */
        public Object writeReplace() {
            return new ManualSerializationProxy(this.localCache);
        }
    }

    static class WeakEntry<K, V> extends WeakReference<K> implements ReferenceEntry<K, V> {
        final int hash;
        final ReferenceEntry<K, V> next;
        volatile ValueReference<K, V> valueReference = LocalCache.unset();

        WeakEntry(ReferenceQueue<K> referenceQueue, K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
            super(k, referenceQueue);
            this.hash = i;
            this.next = referenceEntry;
        }

        public K getKey() {
            return get();
        }

        public long getAccessTime() {
            throw new UnsupportedOperationException();
        }

        public void setAccessTime(long j) {
            throw new UnsupportedOperationException();
        }

        public ReferenceEntry<K, V> getNextInAccessQueue() {
            throw new UnsupportedOperationException();
        }

        public void setNextInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }

        public ReferenceEntry<K, V> getPreviousInAccessQueue() {
            throw new UnsupportedOperationException();
        }

        public void setPreviousInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }

        public long getWriteTime() {
            throw new UnsupportedOperationException();
        }

        public void setWriteTime(long j) {
            throw new UnsupportedOperationException();
        }

        public ReferenceEntry<K, V> getNextInWriteQueue() {
            throw new UnsupportedOperationException();
        }

        public void setNextInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }

        public ReferenceEntry<K, V> getPreviousInWriteQueue() {
            throw new UnsupportedOperationException();
        }

        public void setPreviousInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }

        public ValueReference<K, V> getValueReference() {
            return this.valueReference;
        }

        public void setValueReference(ValueReference<K, V> valueReference) {
            this.valueReference = valueReference;
        }

        public int getHash() {
            return this.hash;
        }

        public ReferenceEntry<K, V> getNext() {
            return this.next;
        }
    }

    static class StrongEntry<K, V> extends AbstractReferenceEntry<K, V> {
        final int hash;
        final K key;
        final ReferenceEntry<K, V> next;
        volatile ValueReference<K, V> valueReference = LocalCache.unset();

        StrongEntry(K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
            this.key = k;
            this.hash = i;
            this.next = referenceEntry;
        }

        public K getKey() {
            return this.key;
        }

        public ValueReference<K, V> getValueReference() {
            return this.valueReference;
        }

        public void setValueReference(ValueReference<K, V> valueReference) {
            this.valueReference = valueReference;
        }

        public int getHash() {
            return this.hash;
        }

        public ReferenceEntry<K, V> getNext() {
            return this.next;
        }
    }

    static final class WeakAccessEntry<K, V> extends WeakEntry<K, V> {
        volatile long accessTime = Long.MAX_VALUE;
        @GuardedBy("Segment.this")
        ReferenceEntry<K, V> nextAccess = LocalCache.nullEntry();
        @GuardedBy("Segment.this")
        ReferenceEntry<K, V> previousAccess = LocalCache.nullEntry();

        WeakAccessEntry(ReferenceQueue<K> referenceQueue, K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
            super(referenceQueue, k, i, referenceEntry);
        }

        public long getAccessTime() {
            return this.accessTime;
        }

        public void setAccessTime(long j) {
            this.accessTime = j;
        }

        public ReferenceEntry<K, V> getNextInAccessQueue() {
            return this.nextAccess;
        }

        public void setNextInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            this.nextAccess = referenceEntry;
        }

        public ReferenceEntry<K, V> getPreviousInAccessQueue() {
            return this.previousAccess;
        }

        public void setPreviousInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            this.previousAccess = referenceEntry;
        }
    }

    static final class WeakAccessWriteEntry<K, V> extends WeakEntry<K, V> {
        volatile long accessTime = Long.MAX_VALUE;
        @GuardedBy("Segment.this")
        ReferenceEntry<K, V> nextAccess = LocalCache.nullEntry();
        @GuardedBy("Segment.this")
        ReferenceEntry<K, V> nextWrite = LocalCache.nullEntry();
        @GuardedBy("Segment.this")
        ReferenceEntry<K, V> previousAccess = LocalCache.nullEntry();
        @GuardedBy("Segment.this")
        ReferenceEntry<K, V> previousWrite = LocalCache.nullEntry();
        volatile long writeTime = Long.MAX_VALUE;

        WeakAccessWriteEntry(ReferenceQueue<K> referenceQueue, K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
            super(referenceQueue, k, i, referenceEntry);
        }

        public long getAccessTime() {
            return this.accessTime;
        }

        public void setAccessTime(long j) {
            this.accessTime = j;
        }

        public ReferenceEntry<K, V> getNextInAccessQueue() {
            return this.nextAccess;
        }

        public void setNextInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            this.nextAccess = referenceEntry;
        }

        public ReferenceEntry<K, V> getPreviousInAccessQueue() {
            return this.previousAccess;
        }

        public void setPreviousInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            this.previousAccess = referenceEntry;
        }

        public long getWriteTime() {
            return this.writeTime;
        }

        public void setWriteTime(long j) {
            this.writeTime = j;
        }

        public ReferenceEntry<K, V> getNextInWriteQueue() {
            return this.nextWrite;
        }

        public void setNextInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            this.nextWrite = referenceEntry;
        }

        public ReferenceEntry<K, V> getPreviousInWriteQueue() {
            return this.previousWrite;
        }

        public void setPreviousInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            this.previousWrite = referenceEntry;
        }
    }

    static final class WeakWriteEntry<K, V> extends WeakEntry<K, V> {
        @GuardedBy("Segment.this")
        ReferenceEntry<K, V> nextWrite = LocalCache.nullEntry();
        @GuardedBy("Segment.this")
        ReferenceEntry<K, V> previousWrite = LocalCache.nullEntry();
        volatile long writeTime = Long.MAX_VALUE;

        WeakWriteEntry(ReferenceQueue<K> referenceQueue, K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
            super(referenceQueue, k, i, referenceEntry);
        }

        public long getWriteTime() {
            return this.writeTime;
        }

        public void setWriteTime(long j) {
            this.writeTime = j;
        }

        public ReferenceEntry<K, V> getNextInWriteQueue() {
            return this.nextWrite;
        }

        public void setNextInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            this.nextWrite = referenceEntry;
        }

        public ReferenceEntry<K, V> getPreviousInWriteQueue() {
            return this.previousWrite;
        }

        public void setPreviousInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            this.previousWrite = referenceEntry;
        }
    }

    static final class StrongAccessEntry<K, V> extends StrongEntry<K, V> {
        volatile long accessTime = Long.MAX_VALUE;
        @GuardedBy("Segment.this")
        ReferenceEntry<K, V> nextAccess = LocalCache.nullEntry();
        @GuardedBy("Segment.this")
        ReferenceEntry<K, V> previousAccess = LocalCache.nullEntry();

        StrongAccessEntry(K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
            super(k, i, referenceEntry);
        }

        public long getAccessTime() {
            return this.accessTime;
        }

        public void setAccessTime(long j) {
            this.accessTime = j;
        }

        public ReferenceEntry<K, V> getNextInAccessQueue() {
            return this.nextAccess;
        }

        public void setNextInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            this.nextAccess = referenceEntry;
        }

        public ReferenceEntry<K, V> getPreviousInAccessQueue() {
            return this.previousAccess;
        }

        public void setPreviousInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            this.previousAccess = referenceEntry;
        }
    }

    static final class StrongAccessWriteEntry<K, V> extends StrongEntry<K, V> {
        volatile long accessTime = Long.MAX_VALUE;
        @GuardedBy("Segment.this")
        ReferenceEntry<K, V> nextAccess = LocalCache.nullEntry();
        @GuardedBy("Segment.this")
        ReferenceEntry<K, V> nextWrite = LocalCache.nullEntry();
        @GuardedBy("Segment.this")
        ReferenceEntry<K, V> previousAccess = LocalCache.nullEntry();
        @GuardedBy("Segment.this")
        ReferenceEntry<K, V> previousWrite = LocalCache.nullEntry();
        volatile long writeTime = Long.MAX_VALUE;

        StrongAccessWriteEntry(K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
            super(k, i, referenceEntry);
        }

        public long getAccessTime() {
            return this.accessTime;
        }

        public void setAccessTime(long j) {
            this.accessTime = j;
        }

        public ReferenceEntry<K, V> getNextInAccessQueue() {
            return this.nextAccess;
        }

        public void setNextInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            this.nextAccess = referenceEntry;
        }

        public ReferenceEntry<K, V> getPreviousInAccessQueue() {
            return this.previousAccess;
        }

        public void setPreviousInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            this.previousAccess = referenceEntry;
        }

        public long getWriteTime() {
            return this.writeTime;
        }

        public void setWriteTime(long j) {
            this.writeTime = j;
        }

        public ReferenceEntry<K, V> getNextInWriteQueue() {
            return this.nextWrite;
        }

        public void setNextInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            this.nextWrite = referenceEntry;
        }

        public ReferenceEntry<K, V> getPreviousInWriteQueue() {
            return this.previousWrite;
        }

        public void setPreviousInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            this.previousWrite = referenceEntry;
        }
    }

    static final class StrongWriteEntry<K, V> extends StrongEntry<K, V> {
        @GuardedBy("Segment.this")
        ReferenceEntry<K, V> nextWrite = LocalCache.nullEntry();
        @GuardedBy("Segment.this")
        ReferenceEntry<K, V> previousWrite = LocalCache.nullEntry();
        volatile long writeTime = Long.MAX_VALUE;

        StrongWriteEntry(K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
            super(k, i, referenceEntry);
        }

        public long getWriteTime() {
            return this.writeTime;
        }

        public void setWriteTime(long j) {
            this.writeTime = j;
        }

        public ReferenceEntry<K, V> getNextInWriteQueue() {
            return this.nextWrite;
        }

        public void setNextInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            this.nextWrite = referenceEntry;
        }

        public ReferenceEntry<K, V> getPreviousInWriteQueue() {
            return this.previousWrite;
        }

        public void setPreviousInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            this.previousWrite = referenceEntry;
        }
    }

    abstract class AbstractCacheSet<T> extends AbstractSet<T> {
        final ConcurrentMap<?, ?> map;

        AbstractCacheSet(ConcurrentMap<?, ?> concurrentMap) {
            this.map = concurrentMap;
        }

        public int size() {
            return this.map.size();
        }

        public boolean isEmpty() {
            return this.map.isEmpty();
        }

        public void clear() {
            this.map.clear();
        }
    }

    static final class AccessQueue<K, V> extends AbstractQueue<ReferenceEntry<K, V>> {
        final ReferenceEntry<K, V> head = new AbstractReferenceEntry<K, V>() {
            ReferenceEntry<K, V> nextAccess = this;
            ReferenceEntry<K, V> previousAccess = this;

            public long getAccessTime() {
                return Long.MAX_VALUE;
            }

            public void setAccessTime(long j) {
            }

            public ReferenceEntry<K, V> getNextInAccessQueue() {
                return this.nextAccess;
            }

            public void setNextInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
                this.nextAccess = referenceEntry;
            }

            public ReferenceEntry<K, V> getPreviousInAccessQueue() {
                return this.previousAccess;
            }

            public void setPreviousInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
                this.previousAccess = referenceEntry;
            }
        };

        AccessQueue() {
        }

        public boolean offer(ReferenceEntry<K, V> referenceEntry) {
            LocalCache.connectAccessOrder(referenceEntry.getPreviousInAccessQueue(), referenceEntry.getNextInAccessQueue());
            LocalCache.connectAccessOrder(this.head.getPreviousInAccessQueue(), referenceEntry);
            LocalCache.connectAccessOrder(referenceEntry, this.head);
            return true;
        }

        public ReferenceEntry<K, V> peek() {
            ReferenceEntry<K, V> nextInAccessQueue = this.head.getNextInAccessQueue();
            return nextInAccessQueue == this.head ? null : nextInAccessQueue;
        }

        public ReferenceEntry<K, V> poll() {
            ReferenceEntry nextInAccessQueue = this.head.getNextInAccessQueue();
            if (nextInAccessQueue == this.head) {
                return null;
            }
            remove(nextInAccessQueue);
            return nextInAccessQueue;
        }

        public boolean remove(Object obj) {
            ReferenceEntry referenceEntry = (ReferenceEntry) obj;
            ReferenceEntry previousInAccessQueue = referenceEntry.getPreviousInAccessQueue();
            ReferenceEntry nextInAccessQueue = referenceEntry.getNextInAccessQueue();
            LocalCache.connectAccessOrder(previousInAccessQueue, nextInAccessQueue);
            LocalCache.nullifyAccessOrder(referenceEntry);
            return nextInAccessQueue != NullEntry.INSTANCE;
        }

        public boolean contains(Object obj) {
            return ((ReferenceEntry) obj).getNextInAccessQueue() != NullEntry.INSTANCE;
        }

        public boolean isEmpty() {
            return this.head.getNextInAccessQueue() == this.head;
        }

        public int size() {
            int i = 0;
            for (ReferenceEntry nextInAccessQueue = this.head.getNextInAccessQueue(); nextInAccessQueue != this.head; nextInAccessQueue = nextInAccessQueue.getNextInAccessQueue()) {
                i++;
            }
            return i;
        }

        public void clear() {
            ReferenceEntry nextInAccessQueue = this.head.getNextInAccessQueue();
            while (nextInAccessQueue != this.head) {
                ReferenceEntry nextInAccessQueue2 = nextInAccessQueue.getNextInAccessQueue();
                LocalCache.nullifyAccessOrder(nextInAccessQueue);
                nextInAccessQueue = nextInAccessQueue2;
            }
            this.head.setNextInAccessQueue(this.head);
            this.head.setPreviousInAccessQueue(this.head);
        }

        public Iterator<ReferenceEntry<K, V>> iterator() {
            return new AbstractSequentialIterator<ReferenceEntry<K, V>>(peek()) {
                /* Access modifiers changed, original: protected */
                public ReferenceEntry<K, V> computeNext(ReferenceEntry<K, V> referenceEntry) {
                    referenceEntry = referenceEntry.getNextInAccessQueue();
                    return referenceEntry == AccessQueue.this.head ? null : referenceEntry;
                }
            };
        }
    }

    abstract class HashIterator<T> implements Iterator<T> {
        Segment<K, V> currentSegment;
        AtomicReferenceArray<ReferenceEntry<K, V>> currentTable;
        WriteThroughEntry lastReturned;
        ReferenceEntry<K, V> nextEntry;
        WriteThroughEntry nextExternal;
        int nextSegmentIndex;
        int nextTableIndex = -1;

        public abstract T next();

        HashIterator() {
            this.nextSegmentIndex = LocalCache.this.segments.length - 1;
            advance();
        }

        /* Access modifiers changed, original: final */
        public final void advance() {
            this.nextExternal = null;
            if (!nextInChain() && !nextInTable()) {
                while (this.nextSegmentIndex >= 0) {
                    Segment[] segmentArr = LocalCache.this.segments;
                    int i = this.nextSegmentIndex;
                    this.nextSegmentIndex = i - 1;
                    this.currentSegment = segmentArr[i];
                    if (this.currentSegment.count != 0) {
                        this.currentTable = this.currentSegment.table;
                        this.nextTableIndex = this.currentTable.length() - 1;
                        if (nextInTable()) {
                            return;
                        }
                    }
                }
            }
        }

        /* Access modifiers changed, original: 0000 */
        public boolean nextInChain() {
            if (this.nextEntry != null) {
                do {
                    this.nextEntry = this.nextEntry.getNext();
                    if (this.nextEntry != null) {
                    }
                } while (!advanceTo(this.nextEntry));
                return true;
            }
            return false;
        }

        /* Access modifiers changed, original: 0000 */
        public boolean nextInTable() {
            while (this.nextTableIndex >= 0) {
                AtomicReferenceArray atomicReferenceArray = this.currentTable;
                int i = this.nextTableIndex;
                this.nextTableIndex = i - 1;
                ReferenceEntry referenceEntry = (ReferenceEntry) atomicReferenceArray.get(i);
                this.nextEntry = referenceEntry;
                if (referenceEntry != null && (advanceTo(this.nextEntry) || nextInChain())) {
                    return true;
                }
            }
            return false;
        }

        /* Access modifiers changed, original: 0000 */
        public boolean advanceTo(ReferenceEntry<K, V> referenceEntry) {
            try {
                boolean z;
                long read = LocalCache.this.ticker.read();
                Object key = referenceEntry.getKey();
                Object liveValue = LocalCache.this.getLiveValue(referenceEntry, read);
                if (liveValue != null) {
                    this.nextExternal = new WriteThroughEntry(key, liveValue);
                    z = true;
                } else {
                    z = false;
                }
                this.currentSegment.postReadCleanup();
                return z;
            } catch (Throwable th) {
                this.currentSegment.postReadCleanup();
            }
        }

        public boolean hasNext() {
            return this.nextExternal != null;
        }

        /* Access modifiers changed, original: 0000 */
        public WriteThroughEntry nextEntry() {
            if (this.nextExternal == null) {
                throw new NoSuchElementException();
            }
            this.lastReturned = this.nextExternal;
            advance();
            return this.lastReturned;
        }

        public void remove() {
            Preconditions.checkState(this.lastReturned != null);
            LocalCache.this.remove(this.lastReturned.getKey());
            this.lastReturned = null;
        }
    }

    enum Strength {
        STRONG {
            /* Access modifiers changed, original: 0000 */
            public <K, V> ValueReference<K, V> referenceValue(Segment<K, V> segment, ReferenceEntry<K, V> referenceEntry, V v, int i) {
                return i == 1 ? new StrongValueReference(v) : new WeightedStrongValueReference(v, i);
            }

            /* Access modifiers changed, original: 0000 */
            public Equivalence<Object> defaultEquivalence() {
                return Equivalence.equals();
            }
        },
        SOFT {
            /* Access modifiers changed, original: 0000 */
            public <K, V> ValueReference<K, V> referenceValue(Segment<K, V> segment, ReferenceEntry<K, V> referenceEntry, V v, int i) {
                return i == 1 ? new SoftValueReference(segment.valueReferenceQueue, v, referenceEntry) : new WeightedSoftValueReference(segment.valueReferenceQueue, v, referenceEntry, i);
            }

            /* Access modifiers changed, original: 0000 */
            public Equivalence<Object> defaultEquivalence() {
                return Equivalence.identity();
            }
        },
        WEAK {
            /* Access modifiers changed, original: 0000 */
            public <K, V> ValueReference<K, V> referenceValue(Segment<K, V> segment, ReferenceEntry<K, V> referenceEntry, V v, int i) {
                return i == 1 ? new WeakValueReference(segment.valueReferenceQueue, v, referenceEntry) : new WeightedWeakValueReference(segment.valueReferenceQueue, v, referenceEntry, i);
            }

            /* Access modifiers changed, original: 0000 */
            public Equivalence<Object> defaultEquivalence() {
                return Equivalence.identity();
            }
        };

        public abstract Equivalence<Object> defaultEquivalence();

        public abstract <K, V> ValueReference<K, V> referenceValue(Segment<K, V> segment, ReferenceEntry<K, V> referenceEntry, V v, int i);
    }

    final class Values extends AbstractCollection<V> {
        private final ConcurrentMap<?, ?> map;

        Values(ConcurrentMap<?, ?> concurrentMap) {
            this.map = concurrentMap;
        }

        public int size() {
            return this.map.size();
        }

        public boolean isEmpty() {
            return this.map.isEmpty();
        }

        public void clear() {
            this.map.clear();
        }

        public Iterator<V> iterator() {
            return new ValueIterator();
        }

        public boolean contains(Object obj) {
            return this.map.containsValue(obj);
        }
    }

    static final class WriteQueue<K, V> extends AbstractQueue<ReferenceEntry<K, V>> {
        final ReferenceEntry<K, V> head = new AbstractReferenceEntry<K, V>() {
            ReferenceEntry<K, V> nextWrite = this;
            ReferenceEntry<K, V> previousWrite = this;

            public long getWriteTime() {
                return Long.MAX_VALUE;
            }

            public void setWriteTime(long j) {
            }

            public ReferenceEntry<K, V> getNextInWriteQueue() {
                return this.nextWrite;
            }

            public void setNextInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
                this.nextWrite = referenceEntry;
            }

            public ReferenceEntry<K, V> getPreviousInWriteQueue() {
                return this.previousWrite;
            }

            public void setPreviousInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
                this.previousWrite = referenceEntry;
            }
        };

        WriteQueue() {
        }

        public boolean offer(ReferenceEntry<K, V> referenceEntry) {
            LocalCache.connectWriteOrder(referenceEntry.getPreviousInWriteQueue(), referenceEntry.getNextInWriteQueue());
            LocalCache.connectWriteOrder(this.head.getPreviousInWriteQueue(), referenceEntry);
            LocalCache.connectWriteOrder(referenceEntry, this.head);
            return true;
        }

        public ReferenceEntry<K, V> peek() {
            ReferenceEntry<K, V> nextInWriteQueue = this.head.getNextInWriteQueue();
            return nextInWriteQueue == this.head ? null : nextInWriteQueue;
        }

        public ReferenceEntry<K, V> poll() {
            ReferenceEntry nextInWriteQueue = this.head.getNextInWriteQueue();
            if (nextInWriteQueue == this.head) {
                return null;
            }
            remove(nextInWriteQueue);
            return nextInWriteQueue;
        }

        public boolean remove(Object obj) {
            ReferenceEntry referenceEntry = (ReferenceEntry) obj;
            ReferenceEntry previousInWriteQueue = referenceEntry.getPreviousInWriteQueue();
            ReferenceEntry nextInWriteQueue = referenceEntry.getNextInWriteQueue();
            LocalCache.connectWriteOrder(previousInWriteQueue, nextInWriteQueue);
            LocalCache.nullifyWriteOrder(referenceEntry);
            return nextInWriteQueue != NullEntry.INSTANCE;
        }

        public boolean contains(Object obj) {
            return ((ReferenceEntry) obj).getNextInWriteQueue() != NullEntry.INSTANCE;
        }

        public boolean isEmpty() {
            return this.head.getNextInWriteQueue() == this.head;
        }

        public int size() {
            int i = 0;
            for (ReferenceEntry nextInWriteQueue = this.head.getNextInWriteQueue(); nextInWriteQueue != this.head; nextInWriteQueue = nextInWriteQueue.getNextInWriteQueue()) {
                i++;
            }
            return i;
        }

        public void clear() {
            ReferenceEntry nextInWriteQueue = this.head.getNextInWriteQueue();
            while (nextInWriteQueue != this.head) {
                ReferenceEntry nextInWriteQueue2 = nextInWriteQueue.getNextInWriteQueue();
                LocalCache.nullifyWriteOrder(nextInWriteQueue);
                nextInWriteQueue = nextInWriteQueue2;
            }
            this.head.setNextInWriteQueue(this.head);
            this.head.setPreviousInWriteQueue(this.head);
        }

        public Iterator<ReferenceEntry<K, V>> iterator() {
            return new AbstractSequentialIterator<ReferenceEntry<K, V>>(peek()) {
                /* Access modifiers changed, original: protected */
                public ReferenceEntry<K, V> computeNext(ReferenceEntry<K, V> referenceEntry) {
                    referenceEntry = referenceEntry.getNextInWriteQueue();
                    return referenceEntry == WriteQueue.this.head ? null : referenceEntry;
                }
            };
        }
    }

    final class EntryIterator extends HashIterator<Entry<K, V>> {
        EntryIterator() {
            super();
        }

        public Entry<K, V> next() {
            return nextEntry();
        }
    }

    final class EntrySet extends AbstractCacheSet<Entry<K, V>> {
        EntrySet(ConcurrentMap<?, ?> concurrentMap) {
            super(concurrentMap);
        }

        public Iterator<Entry<K, V>> iterator() {
            return new EntryIterator();
        }

        public boolean contains(Object obj) {
            boolean z = false;
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            Object key = entry.getKey();
            if (key == null) {
                return false;
            }
            key = LocalCache.this.get(key);
            if (key != null && LocalCache.this.valueEquivalence.equivalent(entry.getValue(), key)) {
                z = true;
            }
            return z;
        }

        public boolean remove(Object obj) {
            boolean z = false;
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            Object key = entry.getKey();
            if (key != null && LocalCache.this.remove(key, entry.getValue())) {
                z = true;
            }
            return z;
        }
    }

    final class KeyIterator extends HashIterator<K> {
        KeyIterator() {
            super();
        }

        public K next() {
            return nextEntry().getKey();
        }
    }

    final class KeySet extends AbstractCacheSet<K> {
        KeySet(ConcurrentMap<?, ?> concurrentMap) {
            super(concurrentMap);
        }

        public Iterator<K> iterator() {
            return new KeyIterator();
        }

        public boolean contains(Object obj) {
            return this.map.containsKey(obj);
        }

        public boolean remove(Object obj) {
            return this.map.remove(obj) != null;
        }
    }

    private enum NullEntry implements ReferenceEntry<Object, Object> {
        INSTANCE;

        public long getAccessTime() {
            return 0;
        }

        public int getHash() {
            return 0;
        }

        public Object getKey() {
            return null;
        }

        public ReferenceEntry<Object, Object> getNext() {
            return null;
        }

        public ReferenceEntry<Object, Object> getNextInAccessQueue() {
            return this;
        }

        public ReferenceEntry<Object, Object> getNextInWriteQueue() {
            return this;
        }

        public ReferenceEntry<Object, Object> getPreviousInAccessQueue() {
            return this;
        }

        public ReferenceEntry<Object, Object> getPreviousInWriteQueue() {
            return this;
        }

        public ValueReference<Object, Object> getValueReference() {
            return null;
        }

        public long getWriteTime() {
            return 0;
        }

        public void setAccessTime(long j) {
        }

        public void setNextInAccessQueue(ReferenceEntry<Object, Object> referenceEntry) {
        }

        public void setNextInWriteQueue(ReferenceEntry<Object, Object> referenceEntry) {
        }

        public void setPreviousInAccessQueue(ReferenceEntry<Object, Object> referenceEntry) {
        }

        public void setPreviousInWriteQueue(ReferenceEntry<Object, Object> referenceEntry) {
        }

        public void setValueReference(ValueReference<Object, Object> valueReference) {
        }

        public void setWriteTime(long j) {
        }
    }

    static class SoftValueReference<K, V> extends SoftReference<V> implements ValueReference<K, V> {
        final ReferenceEntry<K, V> entry;

        public int getWeight() {
            return 1;
        }

        public boolean isActive() {
            return true;
        }

        public boolean isLoading() {
            return false;
        }

        public void notifyNewValue(V v) {
        }

        SoftValueReference(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry) {
            super(v, referenceQueue);
            this.entry = referenceEntry;
        }

        public ReferenceEntry<K, V> getEntry() {
            return this.entry;
        }

        public ValueReference<K, V> copyFor(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry) {
            return new SoftValueReference(referenceQueue, v, referenceEntry);
        }

        public V waitForValue() {
            return get();
        }
    }

    static class StrongValueReference<K, V> implements ValueReference<K, V> {
        final V referent;

        public ValueReference<K, V> copyFor(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry) {
            return this;
        }

        public ReferenceEntry<K, V> getEntry() {
            return null;
        }

        public int getWeight() {
            return 1;
        }

        public boolean isActive() {
            return true;
        }

        public boolean isLoading() {
            return false;
        }

        public void notifyNewValue(V v) {
        }

        StrongValueReference(V v) {
            this.referent = v;
        }

        public V get() {
            return this.referent;
        }

        public V waitForValue() {
            return get();
        }
    }

    final class ValueIterator extends HashIterator<V> {
        ValueIterator() {
            super();
        }

        public V next() {
            return nextEntry().getValue();
        }
    }

    static class WeakValueReference<K, V> extends WeakReference<V> implements ValueReference<K, V> {
        final ReferenceEntry<K, V> entry;

        public int getWeight() {
            return 1;
        }

        public boolean isActive() {
            return true;
        }

        public boolean isLoading() {
            return false;
        }

        public void notifyNewValue(V v) {
        }

        WeakValueReference(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry) {
            super(v, referenceQueue);
            this.entry = referenceEntry;
        }

        public ReferenceEntry<K, V> getEntry() {
            return this.entry;
        }

        public ValueReference<K, V> copyFor(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry) {
            return new WeakValueReference(referenceQueue, v, referenceEntry);
        }

        public V waitForValue() {
            return get();
        }
    }

    static class LocalLoadingCache<K, V> extends LocalManualCache<K, V> implements LoadingCache<K, V> {
        private static final long serialVersionUID = 1;

        LocalLoadingCache(CacheBuilder<? super K, ? super V> cacheBuilder, CacheLoader<? super K, V> cacheLoader) {
            super(new LocalCache(cacheBuilder, (CacheLoader) Preconditions.checkNotNull(cacheLoader)), null);
        }

        public V get(K k) throws ExecutionException {
            return this.localCache.getOrLoad(k);
        }

        public V getUnchecked(K k) {
            try {
                return get(k);
            } catch (ExecutionException e) {
                throw new UncheckedExecutionException(e.getCause());
            }
        }

        public ImmutableMap<K, V> getAll(Iterable<? extends K> iterable) throws ExecutionException {
            return this.localCache.getAll(iterable);
        }

        public void refresh(K k) {
            this.localCache.refresh(k);
        }

        public final V apply(K k) {
            return getUnchecked(k);
        }

        /* Access modifiers changed, original: 0000 */
        public Object writeReplace() {
            return new LoadingSerializationProxy(this.localCache);
        }
    }

    static class ManualSerializationProxy<K, V> extends ForwardingCache<K, V> implements Serializable {
        private static final long serialVersionUID = 1;
        final int concurrencyLevel;
        transient Cache<K, V> delegate;
        final long expireAfterAccessNanos;
        final long expireAfterWriteNanos;
        final Equivalence<Object> keyEquivalence;
        final Strength keyStrength;
        final CacheLoader<? super K, V> loader;
        final long maxWeight;
        final RemovalListener<? super K, ? super V> removalListener;
        final Ticker ticker;
        final Equivalence<Object> valueEquivalence;
        final Strength valueStrength;
        final Weigher<K, V> weigher;

        ManualSerializationProxy(LocalCache<K, V> localCache) {
            LocalCache<K, V> localCache2 = localCache;
            Strength strength = localCache2.keyStrength;
            Strength strength2 = localCache2.valueStrength;
            Equivalence equivalence = localCache2.keyEquivalence;
            Equivalence equivalence2 = localCache2.valueEquivalence;
            long j = localCache2.expireAfterWriteNanos;
            long j2 = localCache2.expireAfterAccessNanos;
            long j3 = localCache2.maxWeight;
            Weigher weigher = localCache2.weigher;
            int i = localCache2.concurrencyLevel;
            RemovalListener removalListener = localCache2.removalListener;
            Ticker ticker = localCache2.ticker;
            CacheLoader cacheLoader = localCache2.defaultLoader;
            this(strength, strength2, equivalence, equivalence2, j, j2, j3, weigher, i, removalListener, ticker, cacheLoader);
        }

        private ManualSerializationProxy(Strength strength, Strength strength2, Equivalence<Object> equivalence, Equivalence<Object> equivalence2, long j, long j2, long j3, Weigher<K, V> weigher, int i, RemovalListener<? super K, ? super V> removalListener, Ticker ticker, CacheLoader<? super K, V> cacheLoader) {
            this.keyStrength = strength;
            this.valueStrength = strength2;
            this.keyEquivalence = equivalence;
            this.valueEquivalence = equivalence2;
            this.expireAfterWriteNanos = j;
            this.expireAfterAccessNanos = j2;
            this.maxWeight = j3;
            this.weigher = weigher;
            this.concurrencyLevel = i;
            this.removalListener = removalListener;
            if (ticker == Ticker.systemTicker() || ticker == CacheBuilder.NULL_TICKER) {
                ticker = null;
            }
            this.ticker = ticker;
            this.loader = cacheLoader;
        }

        /* Access modifiers changed, original: 0000 */
        public CacheBuilder<K, V> recreateCacheBuilder() {
            CacheBuilder removalListener = CacheBuilder.newBuilder().setKeyStrength(this.keyStrength).setValueStrength(this.valueStrength).keyEquivalence(this.keyEquivalence).valueEquivalence(this.valueEquivalence).concurrencyLevel(this.concurrencyLevel).removalListener(this.removalListener);
            removalListener.strictParsing = false;
            if (this.expireAfterWriteNanos > 0) {
                removalListener.expireAfterWrite(this.expireAfterWriteNanos, TimeUnit.NANOSECONDS);
            }
            if (this.expireAfterAccessNanos > 0) {
                removalListener.expireAfterAccess(this.expireAfterAccessNanos, TimeUnit.NANOSECONDS);
            }
            if (this.weigher != OneWeigher.INSTANCE) {
                removalListener.weigher(this.weigher);
                if (this.maxWeight != -1) {
                    removalListener.maximumWeight(this.maxWeight);
                }
            } else if (this.maxWeight != -1) {
                removalListener.maximumSize(this.maxWeight);
            }
            if (this.ticker != null) {
                removalListener.ticker(this.ticker);
            }
            return removalListener;
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.delegate = recreateCacheBuilder().build();
        }

        private Object readResolve() {
            return this.delegate;
        }

        /* Access modifiers changed, original: protected */
        public Cache<K, V> delegate() {
            return this.delegate;
        }
    }

    static final class WeightedSoftValueReference<K, V> extends SoftValueReference<K, V> {
        final int weight;

        WeightedSoftValueReference(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry, int i) {
            super(referenceQueue, v, referenceEntry);
            this.weight = i;
        }

        public int getWeight() {
            return this.weight;
        }

        public ValueReference<K, V> copyFor(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry) {
            return new WeightedSoftValueReference(referenceQueue, v, referenceEntry, this.weight);
        }
    }

    static final class WeightedStrongValueReference<K, V> extends StrongValueReference<K, V> {
        final int weight;

        WeightedStrongValueReference(V v, int i) {
            super(v);
            this.weight = i;
        }

        public int getWeight() {
            return this.weight;
        }
    }

    static final class WeightedWeakValueReference<K, V> extends WeakValueReference<K, V> {
        final int weight;

        WeightedWeakValueReference(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry, int i) {
            super(referenceQueue, v, referenceEntry);
            this.weight = i;
        }

        public int getWeight() {
            return this.weight;
        }

        public ValueReference<K, V> copyFor(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry) {
            return new WeightedWeakValueReference(referenceQueue, v, referenceEntry, this.weight);
        }
    }

    static final class LoadingSerializationProxy<K, V> extends ManualSerializationProxy<K, V> implements LoadingCache<K, V>, Serializable {
        private static final long serialVersionUID = 1;
        transient LoadingCache<K, V> autoDelegate;

        LoadingSerializationProxy(LocalCache<K, V> localCache) {
            super(localCache);
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.autoDelegate = recreateCacheBuilder().build(this.loader);
        }

        public V get(K k) throws ExecutionException {
            return this.autoDelegate.get(k);
        }

        public V getUnchecked(K k) {
            return this.autoDelegate.getUnchecked(k);
        }

        public ImmutableMap<K, V> getAll(Iterable<? extends K> iterable) throws ExecutionException {
            return this.autoDelegate.getAll(iterable);
        }

        public final V apply(K k) {
            return this.autoDelegate.apply(k);
        }

        public void refresh(K k) {
            this.autoDelegate.refresh(k);
        }

        private Object readResolve() {
            return this.autoDelegate;
        }
    }

    static int rehash(int i) {
        i += (i << 15) ^ -12931;
        i ^= i >>> 10;
        i += i << 3;
        i ^= i >>> 6;
        i += (i << 2) + (i << 14);
        return i ^ (i >>> 16);
    }

    LocalCache(CacheBuilder<? super K, ? super V> cacheBuilder, @Nullable CacheLoader<? super K, V> cacheLoader) {
        this.concurrencyLevel = Math.min(cacheBuilder.getConcurrencyLevel(), 65536);
        this.keyStrength = cacheBuilder.getKeyStrength();
        this.valueStrength = cacheBuilder.getValueStrength();
        this.keyEquivalence = cacheBuilder.getKeyEquivalence();
        this.valueEquivalence = cacheBuilder.getValueEquivalence();
        this.maxWeight = cacheBuilder.getMaximumWeight();
        this.weigher = cacheBuilder.getWeigher();
        this.expireAfterAccessNanos = cacheBuilder.getExpireAfterAccessNanos();
        this.expireAfterWriteNanos = cacheBuilder.getExpireAfterWriteNanos();
        this.refreshNanos = cacheBuilder.getRefreshNanos();
        this.removalListener = cacheBuilder.getRemovalListener();
        this.removalNotificationQueue = this.removalListener == NullListener.INSTANCE ? discardingQueue() : new ConcurrentLinkedQueue();
        this.ticker = cacheBuilder.getTicker(recordsTime());
        this.entryFactory = EntryFactory.getFactory(this.keyStrength, usesAccessEntries(), usesWriteEntries());
        this.globalStatsCounter = (StatsCounter) cacheBuilder.getStatsCounterSupplier().get();
        this.defaultLoader = cacheLoader;
        int min = Math.min(cacheBuilder.getInitialCapacity(), 1073741824);
        if (evictsBySize() && !customWeigher()) {
            min = Math.min(min, (int) this.maxWeight);
        }
        int i = 0;
        int i2 = 1;
        int i3 = 1;
        int i4 = 0;
        while (i3 < this.concurrencyLevel && (!evictsBySize() || ((long) (i3 * 20)) <= this.maxWeight)) {
            i4++;
            i3 <<= 1;
        }
        this.segmentShift = 32 - i4;
        this.segmentMask = i3 - 1;
        this.segments = newSegmentArray(i3);
        i4 = min / i3;
        if (i4 * i3 < min) {
            i4++;
        }
        while (i2 < i4) {
            i2 <<= 1;
        }
        if (evictsBySize()) {
            long j = (long) i3;
            long j2 = (this.maxWeight / j) + 1;
            long j3 = this.maxWeight % j;
            while (i < this.segments.length) {
                if (((long) i) == j3) {
                    j2--;
                }
                this.segments[i] = createSegment(i2, j2, (StatsCounter) cacheBuilder.getStatsCounterSupplier().get());
                i++;
            }
            return;
        }
        while (i < this.segments.length) {
            this.segments[i] = createSegment(i2, -1, (StatsCounter) cacheBuilder.getStatsCounterSupplier().get());
            i++;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public boolean evictsBySize() {
        return this.maxWeight >= 0;
    }

    /* Access modifiers changed, original: 0000 */
    public boolean customWeigher() {
        return this.weigher != OneWeigher.INSTANCE;
    }

    /* Access modifiers changed, original: 0000 */
    public boolean expires() {
        return expiresAfterWrite() || expiresAfterAccess();
    }

    /* Access modifiers changed, original: 0000 */
    public boolean expiresAfterWrite() {
        return this.expireAfterWriteNanos > 0;
    }

    /* Access modifiers changed, original: 0000 */
    public boolean expiresAfterAccess() {
        return this.expireAfterAccessNanos > 0;
    }

    /* Access modifiers changed, original: 0000 */
    public boolean refreshes() {
        return this.refreshNanos > 0;
    }

    /* Access modifiers changed, original: 0000 */
    public boolean usesAccessQueue() {
        return expiresAfterAccess() || evictsBySize();
    }

    /* Access modifiers changed, original: 0000 */
    public boolean usesWriteQueue() {
        return expiresAfterWrite();
    }

    /* Access modifiers changed, original: 0000 */
    public boolean recordsWrite() {
        return expiresAfterWrite() || refreshes();
    }

    /* Access modifiers changed, original: 0000 */
    public boolean recordsAccess() {
        return expiresAfterAccess();
    }

    /* Access modifiers changed, original: 0000 */
    public boolean recordsTime() {
        return recordsWrite() || recordsAccess();
    }

    /* Access modifiers changed, original: 0000 */
    public boolean usesWriteEntries() {
        return usesWriteQueue() || recordsWrite();
    }

    /* Access modifiers changed, original: 0000 */
    public boolean usesAccessEntries() {
        return usesAccessQueue() || recordsAccess();
    }

    /* Access modifiers changed, original: 0000 */
    public boolean usesKeyReferences() {
        return this.keyStrength != Strength.STRONG;
    }

    /* Access modifiers changed, original: 0000 */
    public boolean usesValueReferences() {
        return this.valueStrength != Strength.STRONG;
    }

    static <K, V> ValueReference<K, V> unset() {
        return UNSET;
    }

    static <K, V> ReferenceEntry<K, V> nullEntry() {
        return NullEntry.INSTANCE;
    }

    static <E> Queue<E> discardingQueue() {
        return DISCARDING_QUEUE;
    }

    /* Access modifiers changed, original: 0000 */
    @GuardedBy("Segment.this")
    @VisibleForTesting
    public ReferenceEntry<K, V> newEntry(K k, int i, @Nullable ReferenceEntry<K, V> referenceEntry) {
        return segmentFor(i).newEntry(k, i, referenceEntry);
    }

    /* Access modifiers changed, original: 0000 */
    @GuardedBy("Segment.this")
    @VisibleForTesting
    public ReferenceEntry<K, V> copyEntry(ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
        return segmentFor(referenceEntry.getHash()).copyEntry(referenceEntry, referenceEntry2);
    }

    /* Access modifiers changed, original: 0000 */
    @GuardedBy("Segment.this")
    @VisibleForTesting
    public ValueReference<K, V> newValueReference(ReferenceEntry<K, V> referenceEntry, V v, int i) {
        return this.valueStrength.referenceValue(segmentFor(referenceEntry.getHash()), referenceEntry, Preconditions.checkNotNull(v), i);
    }

    /* Access modifiers changed, original: 0000 */
    public int hash(@Nullable Object obj) {
        return rehash(this.keyEquivalence.hash(obj));
    }

    /* Access modifiers changed, original: 0000 */
    public void reclaimValue(ValueReference<K, V> valueReference) {
        ReferenceEntry entry = valueReference.getEntry();
        int hash = entry.getHash();
        segmentFor(hash).reclaimValue(entry.getKey(), hash, valueReference);
    }

    /* Access modifiers changed, original: 0000 */
    public void reclaimKey(ReferenceEntry<K, V> referenceEntry) {
        int hash = referenceEntry.getHash();
        segmentFor(hash).reclaimKey(referenceEntry, hash);
    }

    /* Access modifiers changed, original: 0000 */
    @VisibleForTesting
    public boolean isLive(ReferenceEntry<K, V> referenceEntry, long j) {
        return segmentFor(referenceEntry.getHash()).getLiveValue(referenceEntry, j) != null;
    }

    /* Access modifiers changed, original: 0000 */
    public Segment<K, V> segmentFor(int i) {
        return this.segments[(i >>> this.segmentShift) & this.segmentMask];
    }

    /* Access modifiers changed, original: 0000 */
    public Segment<K, V> createSegment(int i, long j, StatsCounter statsCounter) {
        return new Segment(this, i, j, statsCounter);
    }

    /* Access modifiers changed, original: 0000 */
    @Nullable
    public V getLiveValue(ReferenceEntry<K, V> referenceEntry, long j) {
        if (referenceEntry.getKey() == null) {
            return null;
        }
        Object obj = referenceEntry.getValueReference().get();
        if (obj == null || isExpired(referenceEntry, j)) {
            return null;
        }
        return obj;
    }

    /* Access modifiers changed, original: 0000 */
    public boolean isExpired(ReferenceEntry<K, V> referenceEntry, long j) {
        Preconditions.checkNotNull(referenceEntry);
        if (expiresAfterAccess() && j - referenceEntry.getAccessTime() >= this.expireAfterAccessNanos) {
            return true;
        }
        if (!expiresAfterWrite() || j - referenceEntry.getWriteTime() < this.expireAfterWriteNanos) {
            return false;
        }
        return true;
    }

    @GuardedBy("Segment.this")
    static <K, V> void connectAccessOrder(ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
        referenceEntry.setNextInAccessQueue(referenceEntry2);
        referenceEntry2.setPreviousInAccessQueue(referenceEntry);
    }

    @GuardedBy("Segment.this")
    static <K, V> void nullifyAccessOrder(ReferenceEntry<K, V> referenceEntry) {
        ReferenceEntry nullEntry = nullEntry();
        referenceEntry.setNextInAccessQueue(nullEntry);
        referenceEntry.setPreviousInAccessQueue(nullEntry);
    }

    @GuardedBy("Segment.this")
    static <K, V> void connectWriteOrder(ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
        referenceEntry.setNextInWriteQueue(referenceEntry2);
        referenceEntry2.setPreviousInWriteQueue(referenceEntry);
    }

    @GuardedBy("Segment.this")
    static <K, V> void nullifyWriteOrder(ReferenceEntry<K, V> referenceEntry) {
        ReferenceEntry nullEntry = nullEntry();
        referenceEntry.setNextInWriteQueue(nullEntry);
        referenceEntry.setPreviousInWriteQueue(nullEntry);
    }

    /* Access modifiers changed, original: 0000 */
    public void processPendingNotifications() {
        while (true) {
            RemovalNotification removalNotification = (RemovalNotification) this.removalNotificationQueue.poll();
            if (removalNotification != null) {
                try {
                    this.removalListener.onRemoval(removalNotification);
                } catch (Throwable th) {
                    logger.log(Level.WARNING, "Exception thrown by removal listener", th);
                }
            } else {
                return;
            }
        }
    }

    /* Access modifiers changed, original: final */
    public final Segment<K, V>[] newSegmentArray(int i) {
        return new Segment[i];
    }

    public void cleanUp() {
        for (Segment cleanUp : this.segments) {
            cleanUp.cleanUp();
        }
    }

    public boolean isEmpty() {
        Segment[] segmentArr = this.segments;
        long j = 0;
        int i = 0;
        while (i < segmentArr.length) {
            if (segmentArr[i].count != 0) {
                return false;
            }
            i++;
            j += (long) segmentArr[i].modCount;
        }
        if (j != 0) {
            i = 0;
            while (i < segmentArr.length) {
                if (segmentArr[i].count != 0) {
                    return false;
                }
                i++;
                j -= (long) segmentArr[i].modCount;
            }
            if (j != 0) {
                return false;
            }
        }
        return true;
    }

    /* Access modifiers changed, original: 0000 */
    public long longSize() {
        Segment[] segmentArr = this.segments;
        long j = 0;
        int i = 0;
        while (i < segmentArr.length) {
            i++;
            j += (long) segmentArr[i].count;
        }
        return j;
    }

    public int size() {
        return Ints.saturatedCast(longSize());
    }

    @Nullable
    public V get(@Nullable Object obj) {
        if (obj == null) {
            return null;
        }
        int hash = hash(obj);
        return segmentFor(hash).get(obj, hash);
    }

    @Nullable
    public V getIfPresent(Object obj) {
        int hash = hash(Preconditions.checkNotNull(obj));
        obj = segmentFor(hash).get(obj, hash);
        if (obj == null) {
            this.globalStatsCounter.recordMisses(1);
        } else {
            this.globalStatsCounter.recordHits(1);
        }
        return obj;
    }

    /* Access modifiers changed, original: 0000 */
    public V get(K k, CacheLoader<? super K, V> cacheLoader) throws ExecutionException {
        int hash = hash(Preconditions.checkNotNull(k));
        return segmentFor(hash).get(k, hash, cacheLoader);
    }

    /* Access modifiers changed, original: 0000 */
    public V getOrLoad(K k) throws ExecutionException {
        return get(k, this.defaultLoader);
    }

    /* Access modifiers changed, original: 0000 */
    public ImmutableMap<K, V> getAllPresent(Iterable<?> iterable) {
        LinkedHashMap newLinkedHashMap = Maps.newLinkedHashMap();
        int i = 0;
        int i2 = 0;
        for (Object next : iterable) {
            Object obj = get(next);
            if (obj == null) {
                i2++;
            } else {
                newLinkedHashMap.put(next, obj);
                i++;
            }
        }
        this.globalStatsCounter.recordHits(i);
        this.globalStatsCounter.recordMisses(i2);
        return ImmutableMap.copyOf(newLinkedHashMap);
    }

    /* Access modifiers changed, original: 0000 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:22:0x006b */
    /* JADX WARNING: Can't wrap try/catch for region: R(4:22|23|(2:26|24)|37) */
    /* JADX WARNING: Missing block: B:23:?, code skipped:
            r8 = r1.iterator();
     */
    /* JADX WARNING: Missing block: B:25:0x0073, code skipped:
            if (r8.hasNext() != false) goto L_0x0075;
     */
    /* JADX WARNING: Missing block: B:26:0x0075, code skipped:
            r1 = r8.next();
            r2 = r2 - 1;
            r0.put(r1, get(r1, r7.defaultLoader));
     */
    public org.roboguice.shaded.goole.common.collect.ImmutableMap<K, V> getAll(java.lang.Iterable<? extends K> r8) throws java.util.concurrent.ExecutionException {
        /*
        r7 = this;
        r0 = org.roboguice.shaded.goole.common.collect.Maps.newLinkedHashMap();
        r1 = org.roboguice.shaded.goole.common.collect.Sets.newLinkedHashSet();
        r8 = r8.iterator();
        r2 = 0;
        r3 = 0;
    L_0x000e:
        r4 = r8.hasNext();
        if (r4 == 0) goto L_0x0030;
    L_0x0014:
        r4 = r8.next();
        r5 = r7.get(r4);
        r6 = r0.containsKey(r4);
        if (r6 != 0) goto L_0x000e;
    L_0x0022:
        r0.put(r4, r5);
        if (r5 != 0) goto L_0x002d;
    L_0x0027:
        r2 = r2 + 1;
        r1.add(r4);
        goto L_0x000e;
    L_0x002d:
        r3 = r3 + 1;
        goto L_0x000e;
    L_0x0030:
        r8 = r1.isEmpty();	 Catch:{ all -> 0x0094 }
        if (r8 != 0) goto L_0x0085;
    L_0x0036:
        r8 = r7.defaultLoader;	 Catch:{ UnsupportedLoadingOperationException -> 0x006b }
        r8 = r7.loadAll(r1, r8);	 Catch:{ UnsupportedLoadingOperationException -> 0x006b }
        r4 = r1.iterator();	 Catch:{ UnsupportedLoadingOperationException -> 0x006b }
    L_0x0040:
        r5 = r4.hasNext();	 Catch:{ UnsupportedLoadingOperationException -> 0x006b }
        if (r5 == 0) goto L_0x0085;
    L_0x0046:
        r5 = r4.next();	 Catch:{ UnsupportedLoadingOperationException -> 0x006b }
        r6 = r8.get(r5);	 Catch:{ UnsupportedLoadingOperationException -> 0x006b }
        if (r6 != 0) goto L_0x0067;
    L_0x0050:
        r8 = new org.roboguice.shaded.goole.common.cache.CacheLoader$InvalidCacheLoadException;	 Catch:{ UnsupportedLoadingOperationException -> 0x006b }
        r4 = new java.lang.StringBuilder;	 Catch:{ UnsupportedLoadingOperationException -> 0x006b }
        r4.<init>();	 Catch:{ UnsupportedLoadingOperationException -> 0x006b }
        r6 = "loadAll failed to return a value for ";
        r4.append(r6);	 Catch:{ UnsupportedLoadingOperationException -> 0x006b }
        r4.append(r5);	 Catch:{ UnsupportedLoadingOperationException -> 0x006b }
        r4 = r4.toString();	 Catch:{ UnsupportedLoadingOperationException -> 0x006b }
        r8.<init>(r4);	 Catch:{ UnsupportedLoadingOperationException -> 0x006b }
        throw r8;	 Catch:{ UnsupportedLoadingOperationException -> 0x006b }
    L_0x0067:
        r0.put(r5, r6);	 Catch:{ UnsupportedLoadingOperationException -> 0x006b }
        goto L_0x0040;
    L_0x006b:
        r8 = r1.iterator();	 Catch:{ all -> 0x0094 }
    L_0x006f:
        r1 = r8.hasNext();	 Catch:{ all -> 0x0094 }
        if (r1 == 0) goto L_0x0085;
    L_0x0075:
        r1 = r8.next();	 Catch:{ all -> 0x0094 }
        r2 = r2 + -1;
        r4 = r7.defaultLoader;	 Catch:{ all -> 0x0094 }
        r4 = r7.get(r1, r4);	 Catch:{ all -> 0x0094 }
        r0.put(r1, r4);	 Catch:{ all -> 0x0094 }
        goto L_0x006f;
    L_0x0085:
        r8 = org.roboguice.shaded.goole.common.collect.ImmutableMap.copyOf(r0);	 Catch:{ all -> 0x0094 }
        r0 = r7.globalStatsCounter;
        r0.recordHits(r3);
        r0 = r7.globalStatsCounter;
        r0.recordMisses(r2);
        return r8;
    L_0x0094:
        r8 = move-exception;
        r0 = r7.globalStatsCounter;
        r0.recordHits(r3);
        r0 = r7.globalStatsCounter;
        r0.recordMisses(r2);
        throw r8;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.roboguice.shaded.goole.common.cache.LocalCache.getAll(java.lang.Iterable):org.roboguice.shaded.goole.common.collect.ImmutableMap");
    }

    /* Access modifiers changed, original: 0000 */
    @Nullable
    public Map<K, V> loadAll(Set<? extends K> set, CacheLoader<? super K, V> cacheLoader) throws ExecutionException {
        Throwable e;
        Preconditions.checkNotNull(cacheLoader);
        Preconditions.checkNotNull(set);
        Stopwatch createStarted = Stopwatch.createStarted();
        Object obj = null;
        try {
            Map loadAll = cacheLoader.loadAll(set);
            StringBuilder stringBuilder;
            if (loadAll == null) {
                this.globalStatsCounter.recordLoadException(createStarted.elapsed(TimeUnit.NANOSECONDS));
                stringBuilder = new StringBuilder();
                stringBuilder.append(cacheLoader);
                stringBuilder.append(" returned null map from loadAll");
                throw new InvalidCacheLoadException(stringBuilder.toString());
            }
            createStarted.stop();
            for (Entry entry : loadAll.entrySet()) {
                Object key = entry.getKey();
                Object value = entry.getValue();
                if (key == null || value == null) {
                    obj = 1;
                } else {
                    put(key, value);
                }
            }
            if (obj != null) {
                this.globalStatsCounter.recordLoadException(createStarted.elapsed(TimeUnit.NANOSECONDS));
                stringBuilder = new StringBuilder();
                stringBuilder.append(cacheLoader);
                stringBuilder.append(" returned null keys or values from loadAll");
                throw new InvalidCacheLoadException(stringBuilder.toString());
            }
            this.globalStatsCounter.recordLoadSuccess(createStarted.elapsed(TimeUnit.NANOSECONDS));
            return loadAll;
        } catch (UnsupportedLoadingOperationException e2) {
            throw e2;
        } catch (InterruptedException e3) {
            Thread.currentThread().interrupt();
            throw new ExecutionException(e3);
        } catch (RuntimeException e4) {
            throw new UncheckedExecutionException(e4);
        } catch (Exception e5) {
            throw new ExecutionException(e5);
        } catch (Error e6) {
            throw new ExecutionError(e6);
        } catch (Throwable th) {
            e4 = th;
            obj = 1;
        }
        if (obj == null) {
            this.globalStatsCounter.recordLoadException(createStarted.elapsed(TimeUnit.NANOSECONDS));
        }
        throw e4;
    }

    /* Access modifiers changed, original: 0000 */
    public ReferenceEntry<K, V> getEntry(@Nullable Object obj) {
        if (obj == null) {
            return null;
        }
        int hash = hash(obj);
        return segmentFor(hash).getEntry(obj, hash);
    }

    /* Access modifiers changed, original: 0000 */
    public void refresh(K k) {
        int hash = hash(Preconditions.checkNotNull(k));
        segmentFor(hash).refresh(k, hash, this.defaultLoader, false);
    }

    public boolean containsKey(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        int hash = hash(obj);
        return segmentFor(hash).containsKey(obj, hash);
    }

    public boolean containsValue(@Nullable Object obj) {
        Object obj2 = obj;
        if (obj2 == null) {
            return false;
        }
        long read = this.ticker.read();
        Segment[] segmentArr = this.segments;
        long j = -1;
        int i = 0;
        while (i < 3) {
            Segment[] segmentArr2;
            long j2;
            int length = segmentArr.length;
            long j3 = 0;
            int i2 = 0;
            while (i2 < length) {
                Segment segment = segmentArr[i2];
                int i3 = segment.count;
                AtomicReferenceArray atomicReferenceArray = segment.table;
                for (int i4 = 0; i4 < atomicReferenceArray.length(); i4++) {
                    ReferenceEntry referenceEntry = (ReferenceEntry) atomicReferenceArray.get(i4);
                    while (referenceEntry != null) {
                        segmentArr2 = segmentArr;
                        Object liveValue = segment.getLiveValue(referenceEntry, read);
                        if (liveValue != null) {
                            j2 = read;
                            if (this.valueEquivalence.equivalent(obj2, liveValue)) {
                                return true;
                            }
                        } else {
                            j2 = read;
                        }
                        referenceEntry = referenceEntry.getNext();
                        segmentArr = segmentArr2;
                        read = j2;
                    }
                    j2 = read;
                    segmentArr2 = segmentArr;
                }
                i2++;
                j3 += (long) segment.modCount;
                segmentArr = segmentArr;
                read = read;
            }
            j2 = read;
            segmentArr2 = segmentArr;
            if (j3 == j) {
                break;
            }
            i++;
            j = j3;
            segmentArr = segmentArr2;
            read = j2;
        }
        return false;
    }

    public V put(K k, V v) {
        Preconditions.checkNotNull(k);
        Preconditions.checkNotNull(v);
        int hash = hash(k);
        return segmentFor(hash).put(k, hash, v, false);
    }

    public V putIfAbsent(K k, V v) {
        Preconditions.checkNotNull(k);
        Preconditions.checkNotNull(v);
        int hash = hash(k);
        return segmentFor(hash).put(k, hash, v, true);
    }

    public void putAll(Map<? extends K, ? extends V> map) {
        for (Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    public V remove(@Nullable Object obj) {
        if (obj == null) {
            return null;
        }
        int hash = hash(obj);
        return segmentFor(hash).remove(obj, hash);
    }

    public boolean remove(@Nullable Object obj, @Nullable Object obj2) {
        if (obj == null || obj2 == null) {
            return false;
        }
        int hash = hash(obj);
        return segmentFor(hash).remove(obj, hash, obj2);
    }

    public boolean replace(K k, @Nullable V v, V v2) {
        Preconditions.checkNotNull(k);
        Preconditions.checkNotNull(v2);
        if (v == null) {
            return false;
        }
        int hash = hash(k);
        return segmentFor(hash).replace(k, hash, v, v2);
    }

    public V replace(K k, V v) {
        Preconditions.checkNotNull(k);
        Preconditions.checkNotNull(v);
        int hash = hash(k);
        return segmentFor(hash).replace(k, hash, v);
    }

    public void clear() {
        for (Segment clear : this.segments) {
            clear.clear();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void invalidateAll(Iterable<?> iterable) {
        for (Object remove : iterable) {
            remove(remove);
        }
    }

    public Set<K> keySet() {
        Set<K> set = this.keySet;
        if (set != null) {
            return set;
        }
        KeySet keySet = new KeySet(this);
        this.keySet = keySet;
        return keySet;
    }

    public Collection<V> values() {
        Collection<V> collection = this.values;
        if (collection != null) {
            return collection;
        }
        Values values = new Values(this);
        this.values = values;
        return values;
    }

    @GwtIncompatible("Not supported.")
    public Set<Entry<K, V>> entrySet() {
        Set<Entry<K, V>> set = this.entrySet;
        if (set != null) {
            return set;
        }
        EntrySet entrySet = new EntrySet(this);
        this.entrySet = entrySet;
        return entrySet;
    }
}
