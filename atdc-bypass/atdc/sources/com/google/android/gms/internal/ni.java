package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

public final class ni {
    private static final nk zzbZS = new nj();

    public static <A> nk<A, A> zzFA() {
        return zzbZS;
    }

    public static <K, V> nh<K, V> zza(Comparator<K> comparator) {
        return new nf(comparator);
    }

    public static <A, B> nh<A, B> zza(Map<A, B> map, Comparator<A> comparator) {
        return map.size() < 25 ? nf.zza(new ArrayList(map.keySet()), map, zzbZS, comparator) : nv.zzb(map, comparator);
    }

    public static <A, B, C> nh<A, C> zzb(List<A> list, Map<B, C> map, nk<A, B> nkVar, Comparator<A> comparator) {
        return list.size() < 25 ? nf.zza(list, map, nkVar, comparator) : nx.zzc(list, map, nkVar, comparator);
    }
}
