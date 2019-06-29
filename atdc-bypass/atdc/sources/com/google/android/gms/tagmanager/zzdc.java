package com.google.android.gms.tagmanager;

import android.annotation.TargetApi;
import android.util.LruCache;

@TargetApi(12)
final class zzdc<K, V> implements zzp<K, V> {
    private LruCache<K, V> zzbFm;

    zzdc(int i, zzs<K, V> zzs) {
        this.zzbFm = new zzdd(this, 1048576, zzs);
    }

    public final V get(K k) {
        return this.zzbFm.get(k);
    }

    public final void zzf(K k, V v) {
        this.zzbFm.put(k, v);
    }
}
