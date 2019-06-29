package com.google.android.gms.internal;

import java.util.Comparator;

public abstract class nu<K, V> implements nq<K, V> {
    private final V value;
    private final K zzcab;
    private nq<K, V> zzcac;
    private final nq<K, V> zzcad;

    nu(K k, V v, nq<K, V> nqVar, nq<K, V> nqVar2) {
        nq nqVar3;
        nq nqVar22;
        this.zzcab = k;
        this.value = v;
        if (nqVar3 == null) {
            nqVar3 = np.zzFF();
        }
        this.zzcac = nqVar3;
        if (nqVar22 == null) {
            nqVar22 = np.zzFF();
        }
        this.zzcad = nqVar22;
    }

    private final nq<K, V> zzFL() {
        if (this.zzcac.isEmpty()) {
            return np.zzFF();
        }
        nu zzFM = (this.zzcac.zzFE() || this.zzcac.zzFG().zzFE()) ? this : zzFM();
        return zzFM.zza(null, null, ((nu) zzFM.zzcac).zzFL(), null).zzFN();
    }

    private final nu<K, V> zzFM() {
        nu zzFQ = zzFQ();
        return zzFQ.zzcad.zzFG().zzFE() ? zzFQ.zza(null, null, null, ((nu) zzFQ.zzcad).zzFP()).zzFO().zzFQ() : zzFQ;
    }

    private final nu<K, V> zzFN() {
        nu zzFO = (!this.zzcad.zzFE() || this.zzcac.zzFE()) ? this : zzFO();
        if (zzFO.zzcac.zzFE() && ((nu) zzFO.zzcac).zzcac.zzFE()) {
            zzFO = zzFO.zzFP();
        }
        return (zzFO.zzcac.zzFE() && zzFO.zzcad.zzFE()) ? zzFO.zzFQ() : zzFO;
    }

    private final nu<K, V> zzFO() {
        return (nu) this.zzcad.zza(null, null, zzFD(), zzb(null, null, nr.zzbZY, null, ((nu) this.zzcad).zzcac), null);
    }

    private final nu<K, V> zzFP() {
        return (nu) this.zzcac.zza(null, null, zzFD(), null, zzb(null, null, nr.zzbZY, ((nu) this.zzcac).zzcad, null));
    }

    private final nu<K, V> zzFQ() {
        return zzb(null, null, zza((nq) this), this.zzcac.zza(null, null, zza(this.zzcac), null, null), this.zzcad.zza(null, null, zza(this.zzcad), null, null));
    }

    private static int zza(nq nqVar) {
        return nqVar.zzFE() ? nr.zzbZZ : nr.zzbZY;
    }

    private final nu<K, V> zzb(K k, V v, Integer num, nq<K, V> nqVar, nq<K, V> nqVar2) {
        nq nqVar3;
        nq nqVar22;
        Object obj = this.zzcab;
        Object obj2 = this.value;
        if (nqVar3 == null) {
            nqVar3 = this.zzcac;
        }
        if (nqVar22 == null) {
            nqVar22 = this.zzcad;
        }
        return num == nr.zzbZY ? new nt(obj, obj2, nqVar3, nqVar22) : new no(obj, obj2, nqVar3, nqVar22);
    }

    public final K getKey() {
        return this.zzcab;
    }

    public final V getValue() {
        return this.value;
    }

    public final boolean isEmpty() {
        return false;
    }

    public abstract int zzFD();

    public final nq<K, V> zzFG() {
        return this.zzcac;
    }

    public final nq<K, V> zzFH() {
        return this.zzcad;
    }

    public final nq<K, V> zzFI() {
        return this.zzcac.isEmpty() ? this : this.zzcac.zzFI();
    }

    public final nq<K, V> zzFJ() {
        return this.zzcad.isEmpty() ? this : this.zzcad.zzFJ();
    }

    public final int zzFK() {
        return (this.zzcac.zzFK() + 1) + this.zzcad.zzFK();
    }

    public final /* synthetic */ nq zza(Object obj, Object obj2, int i, nq nqVar, nq nqVar2) {
        return zzb(null, null, i, nqVar, nqVar2);
    }

    public final nq<K, V> zza(K k, V v, Comparator<K> comparator) {
        int compare = comparator.compare(k, this.zzcab);
        nu zza = compare < 0 ? zza(null, null, this.zzcac.zza(k, v, comparator), null) : compare == 0 ? zza(k, v, null, null) : zza(null, null, null, this.zzcad.zza(k, v, comparator));
        return zza.zzFN();
    }

    public final nq<K, V> zza(K k, Comparator<K> comparator) {
        nu zza;
        nu zzFM;
        if (comparator.compare(k, this.zzcab) < 0) {
            zzFM = (this.zzcac.isEmpty() || this.zzcac.zzFE() || ((nu) this.zzcac).zzcac.zzFE()) ? this : zzFM();
            zza = zzFM.zza(null, null, zzFM.zzcac.zza(k, comparator), null);
        } else {
            zzFM = this.zzcac.zzFE() ? zzFP() : this;
            if (!(zzFM.zzcad.isEmpty() || zzFM.zzcad.zzFE() || ((nu) zzFM.zzcad).zzcac.zzFE())) {
                zzFM = zzFM.zzFQ();
                if (zzFM.zzcac.zzFG().zzFE()) {
                    zzFM = zzFM.zzFP().zzFQ();
                }
            }
            if (comparator.compare(k, zzFM.zzcab) == 0) {
                if (zzFM.zzcad.isEmpty()) {
                    return np.zzFF();
                }
                nq zzFI = zzFM.zzcad.zzFI();
                zzFM = zzFM.zza(zzFI.getKey(), zzFI.getValue(), null, ((nu) zzFM.zzcad).zzFL());
            }
            zza = zzFM.zza(null, null, null, zzFM.zzcad.zza(k, comparator));
        }
        return zza.zzFN();
    }

    public abstract nu<K, V> zza(K k, V v, nq<K, V> nqVar, nq<K, V> nqVar2);

    public final void zza(ns<K, V> nsVar) {
        this.zzcac.zza(nsVar);
        nsVar.zzh(this.zzcab, this.value);
        this.zzcad.zza(nsVar);
    }

    /* Access modifiers changed, original: final */
    public final void zzb(nq<K, V> nqVar) {
        this.zzcac = nqVar;
    }
}
