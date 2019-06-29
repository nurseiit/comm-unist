package com.google.android.gms.tagmanager;

import android.util.LruCache;

final class zzdd extends LruCache<K, V> {
    private /* synthetic */ zzs zzbFn;

    zzdd(zzdc zzdc, int i, zzs zzs) {
        this.zzbFn = zzs;
        super(i);
    }

    /* Access modifiers changed, original: protected|final */
    public final int sizeOf(K k, V v) {
        return this.zzbFn.sizeOf(k, v);
    }
}
