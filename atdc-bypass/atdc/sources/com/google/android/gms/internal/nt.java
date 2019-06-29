package com.google.android.gms.internal;

public final class nt<K, V> extends nu<K, V> {
    nt(K k, V v) {
        super(k, v, np.zzFF(), np.zzFF());
    }

    nt(K k, V v, nq<K, V> nqVar, nq<K, V> nqVar2) {
        super(k, v, nqVar, nqVar2);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzFD() {
        return nr.zzbZY;
    }

    public final boolean zzFE() {
        return true;
    }

    /* Access modifiers changed, original: protected|final */
    public final nu<K, V> zza(K k, V v, nq<K, V> nqVar, nq<K, V> nqVar2) {
        Object k2;
        Object v2;
        nq nqVar3;
        nq nqVar22;
        if (k2 == null) {
            k2 = getKey();
        }
        if (v2 == null) {
            v2 = getValue();
        }
        if (nqVar3 == null) {
            nqVar3 = zzFG();
        }
        if (nqVar22 == null) {
            nqVar22 = zzFH();
        }
        return new nt(k2, v2, nqVar3, nqVar22);
    }
}
