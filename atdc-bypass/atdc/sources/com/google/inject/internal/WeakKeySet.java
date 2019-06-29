package com.google.inject.internal;

import com.google.inject.Key;
import com.google.inject.internal.util.SourceProvider;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.roboguice.shaded.goole.common.base.Objects;
import org.roboguice.shaded.goole.common.base.Preconditions;
import org.roboguice.shaded.goole.common.cache.Cache;
import org.roboguice.shaded.goole.common.cache.CacheBuilder;
import org.roboguice.shaded.goole.common.cache.RemovalCause;
import org.roboguice.shaded.goole.common.cache.RemovalListener;
import org.roboguice.shaded.goole.common.cache.RemovalNotification;
import org.roboguice.shaded.goole.common.collect.LinkedHashMultiset;
import org.roboguice.shaded.goole.common.collect.Maps;
import org.roboguice.shaded.goole.common.collect.Multiset;
import org.roboguice.shaded.goole.common.collect.Sets;

final class WeakKeySet {
    private Map<Key<?>, Multiset<Object>> backingMap;
    private final Cache<State, Set<KeyAndSource>> evictionCache = CacheBuilder.newBuilder().weakKeys().removalListener(new RemovalListener<State, Set<KeyAndSource>>() {
        public void onRemoval(RemovalNotification<State, Set<KeyAndSource>> removalNotification) {
            Preconditions.checkState(RemovalCause.COLLECTED.equals(removalNotification.getCause()));
            WeakKeySet.this.cleanUpForCollectedState((Set) removalNotification.getValue());
        }
    }).build();
    private final Object lock;

    private static final class KeyAndSource {
        final Key<?> key;
        final Object source;

        KeyAndSource(Key<?> key, Object obj) {
            this.key = key;
            this.source = obj;
        }

        public int hashCode() {
            return Objects.hashCode(this.key, this.source);
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof KeyAndSource)) {
                return false;
            }
            KeyAndSource keyAndSource = (KeyAndSource) obj;
            if (!(Objects.equal(this.key, keyAndSource.key) && Objects.equal(this.source, keyAndSource.source))) {
                z = false;
            }
            return z;
        }
    }

    private void cleanUpForCollectedState(Set<KeyAndSource> set) {
        synchronized (this.lock) {
            for (KeyAndSource keyAndSource : set) {
                Multiset multiset = (Multiset) this.backingMap.get(keyAndSource.key);
                if (multiset != null) {
                    multiset.remove(keyAndSource.source);
                    if (multiset.isEmpty()) {
                        this.backingMap.remove(keyAndSource.key);
                    }
                }
            }
        }
    }

    WeakKeySet(Object obj) {
        this.lock = obj;
    }

    public void add(Key<?> key, State state, Object obj) {
        if (this.backingMap == null) {
            this.backingMap = Maps.newHashMap();
        }
        if ((obj instanceof Class) || obj == SourceProvider.UNKNOWN_SOURCE) {
            obj = null;
        }
        Multiset multiset = (Multiset) this.backingMap.get(key);
        if (multiset == null) {
            multiset = LinkedHashMultiset.create();
            this.backingMap.put(key, multiset);
        }
        obj = Errors.convert(obj);
        multiset.add(obj);
        if (state.parent() != State.NONE) {
            Set set = (Set) this.evictionCache.getIfPresent(state);
            if (set == null) {
                Cache cache = this.evictionCache;
                HashSet newHashSet = Sets.newHashSet();
                cache.put(state, newHashSet);
                set = newHashSet;
            }
            set.add(new KeyAndSource(key, obj));
        }
    }

    public boolean contains(Key<?> key) {
        this.evictionCache.cleanUp();
        return this.backingMap != null && this.backingMap.containsKey(key);
    }

    public Set<Object> getSources(Key<?> key) {
        this.evictionCache.cleanUp();
        Multiset multiset = this.backingMap == null ? null : (Multiset) this.backingMap.get(key);
        if (multiset == null) {
            return null;
        }
        return multiset.elementSet();
    }
}
