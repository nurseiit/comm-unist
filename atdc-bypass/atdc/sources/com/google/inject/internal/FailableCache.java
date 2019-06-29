package com.google.inject.internal;

import org.roboguice.shaded.goole.common.cache.CacheBuilder;
import org.roboguice.shaded.goole.common.cache.CacheLoader;
import org.roboguice.shaded.goole.common.cache.LoadingCache;

public abstract class FailableCache<K, V> {
    private final LoadingCache<K, Object> delegate = CacheBuilder.newBuilder().build(new CacheLoader<K, Object>() {
        public Object load(K k) {
            Object create;
            Errors errors = new Errors();
            try {
                create = FailableCache.this.create(k, errors);
            } catch (ErrorsException e) {
                errors.merge(e.getErrors());
                create = null;
            }
            return errors.hasErrors() ? errors : create;
        }
    });

    public abstract V create(K k, Errors errors) throws ErrorsException;

    public V get(K k, Errors errors) throws ErrorsException {
        Object unchecked = this.delegate.getUnchecked(k);
        if (!(unchecked instanceof Errors)) {
            return unchecked;
        }
        errors.merge((Errors) unchecked);
        throw errors.toException();
    }

    /* Access modifiers changed, original: 0000 */
    public boolean remove(K k) {
        return this.delegate.asMap().remove(k) != null;
    }
}
