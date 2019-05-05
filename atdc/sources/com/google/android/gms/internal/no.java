package com.google.android.gms.internal;

public final class no<K, V> extends nu<K, V> {
    no(K k, V v, nq<K, V> nqVar, nq<K, V> nqVar2) {
        super(k, v, nqVar, nqVar2);
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzFD() {
        return nr.zzbZZ;
    }

    public final boolean zzFE() {
        return false;
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
        return new no(k2, v2, nqVar3, nqVar22);
    }
}
