package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

public final class nv<K, V> extends nh<K, V> {
    private Comparator<K> zzbZN;
    private nq<K, V> zzcae;

    private nv(nq<K, V> nqVar, Comparator<K> comparator) {
        this.zzcae = nqVar;
        this.zzbZN = comparator;
    }

    /* synthetic */ nv(nq nqVar, Comparator comparator, nw nwVar) {
        this(nqVar, comparator);
    }

    private final nq<K, V> zzaf(K k) {
        nq nqVar = this.zzcae;
        while (!nqVar.isEmpty()) {
            int compare = this.zzbZN.compare(k, nqVar.getKey());
            if (compare < 0) {
                nqVar = nqVar.zzFG();
            } else if (compare == 0) {
                return nqVar;
            } else {
                nqVar = nqVar.zzFH();
            }
        }
        return null;
    }

    public static <A, B> nv<A, B> zzb(Map<A, B> map, Comparator<A> comparator) {
        return nx.zzc(new ArrayList(map.keySet()), map, ni.zzFA(), comparator);
    }

    public final boolean containsKey(K k) {
        return zzaf(k) != null;
    }

    public final V get(K k) {
        nq zzaf = zzaf(k);
        return zzaf != null ? zzaf.getValue() : null;
    }

    public final Comparator<K> getComparator() {
        return this.zzbZN;
    }

    public final boolean isEmpty() {
        return this.zzcae.isEmpty();
    }

    public final Iterator<Entry<K, V>> iterator() {
        return new nl(this.zzcae, null, this.zzbZN, false);
    }

    public final int size() {
        return this.zzcae.zzFK();
    }

    public final K zzFx() {
        return this.zzcae.zzFI().getKey();
    }

    public final K zzFy() {
        return this.zzcae.zzFJ().getKey();
    }

    public final Iterator<Entry<K, V>> zzFz() {
        return new nl(this.zzcae, null, this.zzbZN, true);
    }

    public final nh<K, V> zzX(K k) {
        return !containsKey(k) ? this : new nv(this.zzcae.zza(k, this.zzbZN).zza(null, null, nr.zzbZZ, null, null), this.zzbZN);
    }

    public final K zzY(K k) {
        nq nqVar = this.zzcae;
        nq nqVar2 = null;
        while (!nqVar.isEmpty()) {
            int compare = this.zzbZN.compare(k, nqVar.getKey());
            if (compare == 0) {
                if (nqVar.zzFG().isEmpty()) {
                    return nqVar2 != null ? nqVar2.getKey() : null;
                } else {
                    nq zzFG = nqVar.zzFG();
                    while (!zzFG.zzFH().isEmpty()) {
                        zzFG = zzFG.zzFH();
                    }
                    return zzFG.getKey();
                }
            } else if (compare < 0) {
                nqVar = nqVar.zzFG();
            } else {
                nqVar2 = nqVar;
                nqVar = nqVar.zzFH();
            }
        }
        String valueOf = String.valueOf(k);
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 50);
        stringBuilder.append("Couldn't find predecessor key of non-present key: ");
        stringBuilder.append(valueOf);
        throw new IllegalArgumentException(stringBuilder.toString());
    }

    public final void zza(ns<K, V> nsVar) {
        this.zzcae.zza(nsVar);
    }

    public final nh<K, V> zzg(K k, V v) {
        return new nv(this.zzcae.zza(k, v, this.zzbZN).zza(null, null, nr.zzbZZ, null, null), this.zzbZN);
    }
}
