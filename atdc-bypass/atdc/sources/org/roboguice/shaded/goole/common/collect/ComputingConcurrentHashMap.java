package org.roboguice.shaded.goole.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.ref.ReferenceQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import org.roboguice.shaded.goole.common.base.Equivalence;
import org.roboguice.shaded.goole.common.base.Function;
import org.roboguice.shaded.goole.common.base.Preconditions;

class ComputingConcurrentHashMap<K, V> extends MapMakerInternalMap<K, V> {
    private static final long serialVersionUID = 4;
    final Function<? super K, ? extends V> computingFunction;

    private static final class ComputedReference<K, V> implements ValueReference<K, V> {
        final V value;

        public void clear(ValueReference<K, V> valueReference) {
        }

        public ValueReference<K, V> copyFor(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry) {
            return this;
        }

        public ReferenceEntry<K, V> getEntry() {
            return null;
        }

        public boolean isComputingReference() {
            return false;
        }

        ComputedReference(@Nullable V v) {
            this.value = v;
        }

        public V get() {
            return this.value;
        }

        public V waitForValue() {
            return get();
        }
    }

    private static final class ComputingValueReference<K, V> implements ValueReference<K, V> {
        @GuardedBy("ComputingValueReference.this")
        volatile ValueReference<K, V> computedReference = MapMakerInternalMap.unset();
        final Function<? super K, ? extends V> computingFunction;

        public ValueReference<K, V> copyFor(ReferenceQueue<V> referenceQueue, @Nullable V v, ReferenceEntry<K, V> referenceEntry) {
            return this;
        }

        public V get() {
            return null;
        }

        public ReferenceEntry<K, V> getEntry() {
            return null;
        }

        public boolean isComputingReference() {
            return true;
        }

        public ComputingValueReference(Function<? super K, ? extends V> function) {
            this.computingFunction = function;
        }

        /* JADX WARNING: Missing block: B:23:0x0023, code skipped:
            r0 = th;
     */
        public V waitForValue() throws java.util.concurrent.ExecutionException {
            /*
            r3 = this;
            r0 = r3.computedReference;
            r1 = org.roboguice.shaded.goole.common.collect.MapMakerInternalMap.UNSET;
            if (r0 != r1) goto L_0x0032;
        L_0x0006:
            r0 = 0;
            monitor-enter(r3);	 Catch:{ all -> 0x0025 }
            r1 = 0;
        L_0x0009:
            r0 = r3.computedReference;	 Catch:{ all -> 0x0020 }
            r2 = org.roboguice.shaded.goole.common.collect.MapMakerInternalMap.UNSET;	 Catch:{ all -> 0x0020 }
            if (r0 != r2) goto L_0x0015;
        L_0x000f:
            r3.wait();	 Catch:{ InterruptedException -> 0x0013 }
            goto L_0x0009;
        L_0x0013:
            r1 = 1;
            goto L_0x0009;
        L_0x0015:
            monitor-exit(r3);	 Catch:{ all -> 0x0020 }
            if (r1 == 0) goto L_0x0032;
        L_0x0018:
            r0 = java.lang.Thread.currentThread();
            r0.interrupt();
            goto L_0x0032;
        L_0x0020:
            r0 = move-exception;
            monitor-exit(r3);	 Catch:{ all -> 0x0020 }
            throw r0;	 Catch:{ all -> 0x0023 }
        L_0x0023:
            r0 = move-exception;
            goto L_0x0028;
        L_0x0025:
            r1 = move-exception;
            r0 = r1;
            r1 = 0;
        L_0x0028:
            if (r1 == 0) goto L_0x0031;
        L_0x002a:
            r1 = java.lang.Thread.currentThread();
            r1.interrupt();
        L_0x0031:
            throw r0;
        L_0x0032:
            r0 = r3.computedReference;
            r0 = r0.waitForValue();
            return r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: org.roboguice.shaded.goole.common.collect.ComputingConcurrentHashMap$ComputingValueReference.waitForValue():java.lang.Object");
        }

        public void clear(ValueReference<K, V> valueReference) {
            setValueReference(valueReference);
        }

        /* Access modifiers changed, original: 0000 */
        public V compute(K k, int i) throws ExecutionException {
            try {
                Object apply = this.computingFunction.apply(k);
                setValueReference(new ComputedReference(apply));
                return apply;
            } catch (Throwable th) {
                setValueReference(new ComputationExceptionReference(th));
                ExecutionException executionException = new ExecutionException(th);
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void setValueReference(ValueReference<K, V> valueReference) {
            synchronized (this) {
                if (this.computedReference == MapMakerInternalMap.UNSET) {
                    this.computedReference = valueReference;
                    notifyAll();
                }
            }
        }
    }

    private static final class ComputationExceptionReference<K, V> implements ValueReference<K, V> {
        final Throwable t;

        public void clear(ValueReference<K, V> valueReference) {
        }

        public ValueReference<K, V> copyFor(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry) {
            return this;
        }

        public V get() {
            return null;
        }

        public ReferenceEntry<K, V> getEntry() {
            return null;
        }

        public boolean isComputingReference() {
            return false;
        }

        ComputationExceptionReference(Throwable th) {
            this.t = th;
        }

        public V waitForValue() throws ExecutionException {
            throw new ExecutionException(this.t);
        }
    }

    static final class ComputingSegment<K, V> extends Segment<K, V> {
        ComputingSegment(MapMakerInternalMap<K, V> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
        }

        /* Access modifiers changed, original: 0000 */
        /* JADX WARNING: Removed duplicated region for block: B:67:0x00c5 A:{SYNTHETIC} */
        /* JADX WARNING: Removed duplicated region for block: B:43:0x00a4 A:{Catch:{ all -> 0x00e8, all -> 0x00f0 }} */
        /* JADX WARNING: Removed duplicated region for block: B:67:0x00c5 A:{SYNTHETIC} */
        /* JADX WARNING: Removed duplicated region for block: B:43:0x00a4 A:{Catch:{ all -> 0x00e8, all -> 0x00f0 }} */
        /* JADX WARNING: Removed duplicated region for block: B:67:0x00c5 A:{SYNTHETIC} */
        /* JADX WARNING: Missing block: B:12:0x001e, code skipped:
            if (r0.getValueReference().isComputingReference() == false) goto L_0x0020;
     */
        public V getOrCompute(K r11, int r12, org.roboguice.shaded.goole.common.base.Function<? super K, ? extends V> r13) throws java.util.concurrent.ExecutionException {
            /*
            r10 = this;
        L_0x0000:
            r0 = r10.getEntry(r11, r12);	 Catch:{ all -> 0x00f0 }
            if (r0 == 0) goto L_0x0013;
        L_0x0006:
            r1 = r10.getLiveValue(r0);	 Catch:{ all -> 0x00f0 }
            if (r1 == 0) goto L_0x0013;
        L_0x000c:
            r10.recordRead(r0);	 Catch:{ all -> 0x00f0 }
            r10.postReadCleanup();
            return r1;
        L_0x0013:
            r1 = 1;
            if (r0 == 0) goto L_0x0020;
        L_0x0016:
            r2 = r0.getValueReference();	 Catch:{ all -> 0x00f0 }
            r2 = r2.isComputingReference();	 Catch:{ all -> 0x00f0 }
            if (r2 != 0) goto L_0x00cd;
        L_0x0020:
            r0 = 0;
            r10.lock();	 Catch:{ all -> 0x00f0 }
            r10.preWriteCleanup();	 Catch:{ all -> 0x00e8 }
            r2 = r10.count;	 Catch:{ all -> 0x00e8 }
            r2 = r2 - r1;
            r3 = r10.table;	 Catch:{ all -> 0x00e8 }
            r4 = r3.length();	 Catch:{ all -> 0x00e8 }
            r4 = r4 - r1;
            r4 = r4 & r12;
            r5 = r3.get(r4);	 Catch:{ all -> 0x00e8 }
            r5 = (org.roboguice.shaded.goole.common.collect.MapMakerInternalMap.ReferenceEntry) r5;	 Catch:{ all -> 0x00e8 }
            r6 = r5;
        L_0x0039:
            if (r6 == 0) goto L_0x00a1;
        L_0x003b:
            r7 = r6.getKey();	 Catch:{ all -> 0x00e8 }
            r8 = r6.getHash();	 Catch:{ all -> 0x00e8 }
            if (r8 != r12) goto L_0x009c;
        L_0x0045:
            if (r7 == 0) goto L_0x009c;
        L_0x0047:
            r8 = r10.map;	 Catch:{ all -> 0x00e8 }
            r8 = r8.keyEquivalence;	 Catch:{ all -> 0x00e8 }
            r8 = r8.equivalent(r11, r7);	 Catch:{ all -> 0x00e8 }
            if (r8 == 0) goto L_0x009c;
        L_0x0051:
            r8 = r6.getValueReference();	 Catch:{ all -> 0x00e8 }
            r8 = r8.isComputingReference();	 Catch:{ all -> 0x00e8 }
            if (r8 == 0) goto L_0x005d;
        L_0x005b:
            r2 = 0;
            goto L_0x00a2;
        L_0x005d:
            r8 = r6.getValueReference();	 Catch:{ all -> 0x00e8 }
            r8 = r8.get();	 Catch:{ all -> 0x00e8 }
            if (r8 != 0) goto L_0x006d;
        L_0x0067:
            r9 = org.roboguice.shaded.goole.common.collect.MapMaker.RemovalCause.COLLECTED;	 Catch:{ all -> 0x00e8 }
            r10.enqueueNotification(r7, r12, r8, r9);	 Catch:{ all -> 0x00e8 }
            goto L_0x0082;
        L_0x006d:
            r9 = r10.map;	 Catch:{ all -> 0x00e8 }
            r9 = r9.expires();	 Catch:{ all -> 0x00e8 }
            if (r9 == 0) goto L_0x008f;
        L_0x0075:
            r9 = r10.map;	 Catch:{ all -> 0x00e8 }
            r9 = r9.isExpired(r6);	 Catch:{ all -> 0x00e8 }
            if (r9 == 0) goto L_0x008f;
        L_0x007d:
            r9 = org.roboguice.shaded.goole.common.collect.MapMaker.RemovalCause.EXPIRED;	 Catch:{ all -> 0x00e8 }
            r10.enqueueNotification(r7, r12, r8, r9);	 Catch:{ all -> 0x00e8 }
        L_0x0082:
            r7 = r10.evictionQueue;	 Catch:{ all -> 0x00e8 }
            r7.remove(r6);	 Catch:{ all -> 0x00e8 }
            r7 = r10.expirationQueue;	 Catch:{ all -> 0x00e8 }
            r7.remove(r6);	 Catch:{ all -> 0x00e8 }
            r10.count = r2;	 Catch:{ all -> 0x00e8 }
            goto L_0x00a1;
        L_0x008f:
            r10.recordLockedRead(r6);	 Catch:{ all -> 0x00e8 }
            r10.unlock();	 Catch:{ all -> 0x00f0 }
            r10.postWriteCleanup();	 Catch:{ all -> 0x00f0 }
            r10.postReadCleanup();
            return r8;
        L_0x009c:
            r6 = r6.getNext();	 Catch:{ all -> 0x00e8 }
            goto L_0x0039;
        L_0x00a1:
            r2 = 1;
        L_0x00a2:
            if (r2 == 0) goto L_0x00bb;
        L_0x00a4:
            r0 = new org.roboguice.shaded.goole.common.collect.ComputingConcurrentHashMap$ComputingValueReference;	 Catch:{ all -> 0x00e8 }
            r0.<init>(r13);	 Catch:{ all -> 0x00e8 }
            if (r6 != 0) goto L_0x00b8;
        L_0x00ab:
            r5 = r10.newEntry(r11, r12, r5);	 Catch:{ all -> 0x00e8 }
            r5.setValueReference(r0);	 Catch:{ all -> 0x00e8 }
            r3.set(r4, r5);	 Catch:{ all -> 0x00e8 }
            r3 = r0;
            r0 = r5;
            goto L_0x00bd;
        L_0x00b8:
            r6.setValueReference(r0);	 Catch:{ all -> 0x00e8 }
        L_0x00bb:
            r3 = r0;
            r0 = r6;
        L_0x00bd:
            r10.unlock();	 Catch:{ all -> 0x00f0 }
            r10.postWriteCleanup();	 Catch:{ all -> 0x00f0 }
            if (r2 == 0) goto L_0x00cd;
        L_0x00c5:
            r11 = r10.compute(r11, r12, r0, r3);	 Catch:{ all -> 0x00f0 }
            r10.postReadCleanup();
            return r11;
        L_0x00cd:
            r2 = java.lang.Thread.holdsLock(r0);	 Catch:{ all -> 0x00f0 }
            r1 = r1 ^ r2;
            r2 = "Recursive computation";
            org.roboguice.shaded.goole.common.base.Preconditions.checkState(r1, r2);	 Catch:{ all -> 0x00f0 }
            r1 = r0.getValueReference();	 Catch:{ all -> 0x00f0 }
            r1 = r1.waitForValue();	 Catch:{ all -> 0x00f0 }
            if (r1 == 0) goto L_0x0000;
        L_0x00e1:
            r10.recordRead(r0);	 Catch:{ all -> 0x00f0 }
            r10.postReadCleanup();
            return r1;
        L_0x00e8:
            r11 = move-exception;
            r10.unlock();	 Catch:{ all -> 0x00f0 }
            r10.postWriteCleanup();	 Catch:{ all -> 0x00f0 }
            throw r11;	 Catch:{ all -> 0x00f0 }
        L_0x00f0:
            r11 = move-exception;
            r10.postReadCleanup();
            throw r11;
            */
            throw new UnsupportedOperationException("Method not decompiled: org.roboguice.shaded.goole.common.collect.ComputingConcurrentHashMap$ComputingSegment.getOrCompute(java.lang.Object, int, org.roboguice.shaded.goole.common.base.Function):java.lang.Object");
        }

        /* Access modifiers changed, original: 0000 */
        /* JADX WARNING: Missing block: B:9:0x0010, code skipped:
            if (r3 == null) goto L_0x001e;
     */
        /* JADX WARNING: Missing block: B:13:0x0017, code skipped:
            if (put(r8, r9, r3, true) == null) goto L_0x001e;
     */
        /* JADX WARNING: Missing block: B:14:0x0019, code skipped:
            enqueueNotification(r8, r9, r3, org.roboguice.shaded.goole.common.collect.MapMaker.RemovalCause.REPLACED);
     */
        /* JADX WARNING: Missing block: B:16:0x0020, code skipped:
            if (r4 != 0) goto L_0x0025;
     */
        /* JADX WARNING: Missing block: B:17:0x0022, code skipped:
            java.lang.System.nanoTime();
     */
        /* JADX WARNING: Missing block: B:18:0x0025, code skipped:
            if (r3 != null) goto L_0x002a;
     */
        /* JADX WARNING: Missing block: B:19:0x0027, code skipped:
            clearValue(r8, r9, r11);
     */
        /* JADX WARNING: Missing block: B:20:0x002a, code skipped:
            return r3;
     */
        /* JADX WARNING: Missing block: B:29:0x0035, code skipped:
            r10 = th;
     */
        public V compute(K r8, int r9, org.roboguice.shaded.goole.common.collect.MapMakerInternalMap.ReferenceEntry<K, V> r10, org.roboguice.shaded.goole.common.collect.ComputingConcurrentHashMap.ComputingValueReference<K, V> r11) throws java.util.concurrent.ExecutionException {
            /*
            r7 = this;
            java.lang.System.nanoTime();
            r0 = 0;
            r2 = 0;
            monitor-enter(r10);	 Catch:{ all -> 0x0039 }
            r3 = r11.compute(r8, r9);	 Catch:{ all -> 0x002e }
            r4 = java.lang.System.nanoTime();	 Catch:{ all -> 0x002b }
            monitor-exit(r10);	 Catch:{ all -> 0x0037 }
            if (r3 == 0) goto L_0x001e;
        L_0x0012:
            r10 = 1;
            r10 = r7.put(r8, r9, r3, r10);	 Catch:{ all -> 0x0035 }
            if (r10 == 0) goto L_0x001e;
        L_0x0019:
            r10 = org.roboguice.shaded.goole.common.collect.MapMaker.RemovalCause.REPLACED;	 Catch:{ all -> 0x0035 }
            r7.enqueueNotification(r8, r9, r3, r10);	 Catch:{ all -> 0x0035 }
        L_0x001e:
            r10 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1));
            if (r10 != 0) goto L_0x0025;
        L_0x0022:
            java.lang.System.nanoTime();
        L_0x0025:
            if (r3 != 0) goto L_0x002a;
        L_0x0027:
            r7.clearValue(r8, r9, r11);
        L_0x002a:
            return r3;
        L_0x002b:
            r2 = move-exception;
            r4 = r0;
            goto L_0x0033;
        L_0x002e:
            r3 = move-exception;
            r4 = r0;
            r6 = r3;
            r3 = r2;
            r2 = r6;
        L_0x0033:
            monitor-exit(r10);	 Catch:{ all -> 0x0037 }
            throw r2;	 Catch:{ all -> 0x0035 }
        L_0x0035:
            r10 = move-exception;
            goto L_0x003c;
        L_0x0037:
            r2 = move-exception;
            goto L_0x0033;
        L_0x0039:
            r10 = move-exception;
            r4 = r0;
            r3 = r2;
        L_0x003c:
            r2 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1));
            if (r2 != 0) goto L_0x0043;
        L_0x0040:
            java.lang.System.nanoTime();
        L_0x0043:
            if (r3 != 0) goto L_0x0048;
        L_0x0045:
            r7.clearValue(r8, r9, r11);
        L_0x0048:
            throw r10;
            */
            throw new UnsupportedOperationException("Method not decompiled: org.roboguice.shaded.goole.common.collect.ComputingConcurrentHashMap$ComputingSegment.compute(java.lang.Object, int, org.roboguice.shaded.goole.common.collect.MapMakerInternalMap$ReferenceEntry, org.roboguice.shaded.goole.common.collect.ComputingConcurrentHashMap$ComputingValueReference):java.lang.Object");
        }
    }

    static final class ComputingSerializationProxy<K, V> extends AbstractSerializationProxy<K, V> {
        private static final long serialVersionUID = 4;
        final Function<? super K, ? extends V> computingFunction;

        ComputingSerializationProxy(Strength strength, Strength strength2, Equivalence<Object> equivalence, Equivalence<Object> equivalence2, long j, long j2, int i, int i2, RemovalListener<? super K, ? super V> removalListener, ConcurrentMap<K, V> concurrentMap, Function<? super K, ? extends V> function) {
            super(strength, strength2, equivalence, equivalence2, j, j2, i, i2, removalListener, concurrentMap);
            this.computingFunction = function;
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            writeMapTo(objectOutputStream);
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.delegate = readMapMaker(objectInputStream).makeComputingMap(this.computingFunction);
            readEntries(objectInputStream);
        }

        /* Access modifiers changed, original: 0000 */
        public Object readResolve() {
            return this.delegate;
        }
    }

    ComputingConcurrentHashMap(MapMaker mapMaker, Function<? super K, ? extends V> function) {
        super(mapMaker);
        this.computingFunction = (Function) Preconditions.checkNotNull(function);
    }

    /* Access modifiers changed, original: 0000 */
    public Segment<K, V> createSegment(int i, int i2) {
        return new ComputingSegment(this, i, i2);
    }

    /* Access modifiers changed, original: 0000 */
    public ComputingSegment<K, V> segmentFor(int i) {
        return (ComputingSegment) super.segmentFor(i);
    }

    /* Access modifiers changed, original: 0000 */
    public V getOrCompute(K k) throws ExecutionException {
        int hash = hash(Preconditions.checkNotNull(k));
        return segmentFor(hash).getOrCompute(k, hash, this.computingFunction);
    }

    /* Access modifiers changed, original: 0000 */
    public Object writeReplace() {
        return new ComputingSerializationProxy(this.keyStrength, this.valueStrength, this.keyEquivalence, this.valueEquivalence, this.expireAfterWriteNanos, this.expireAfterAccessNanos, this.maximumSize, this.concurrencyLevel, this.removalListener, this, this.computingFunction);
    }
}
