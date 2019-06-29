package com.google.android.gms.internal;

import java.util.Comparator;

public interface nq<K, V> {
    K getKey();

    V getValue();

    boolean isEmpty();

    boolean zzFE();

    nq<K, V> zzFG();

    nq<K, V> zzFH();

    nq<K, V> zzFI();

    nq<K, V> zzFJ();

    int zzFK();

    nq<K, V> zza(K k, V v, Integer num, nq<K, V> nqVar, nq<K, V> nqVar2);

    nq<K, V> zza(K k, V v, Comparator<K> comparator);

    nq<K, V> zza(K k, Comparator<K> comparator);

    void zza(ns<K, V> nsVar);
}
