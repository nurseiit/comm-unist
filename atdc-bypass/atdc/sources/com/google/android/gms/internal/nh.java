package com.google.android.gms.internal;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Map.Entry;

public abstract class nh<K, V> implements Iterable<Entry<K, V>> {
    public abstract boolean containsKey(K k);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nh)) {
            return false;
        }
        nh nhVar = (nh) obj;
        if (!getComparator().equals(nhVar.getComparator()) || size() != nhVar.size()) {
            return false;
        }
        Iterator it = iterator();
        Iterator it2 = nhVar.iterator();
        while (it.hasNext()) {
            if (!((Entry) it.next()).equals(it2.next())) {
                return false;
            }
        }
        return true;
    }

    public abstract V get(K k);

    public abstract Comparator<K> getComparator();

    public int hashCode() {
        int hashCode = getComparator().hashCode();
        Iterator it = iterator();
        while (it.hasNext()) {
            hashCode = (hashCode * 31) + ((Entry) it.next()).hashCode();
        }
        return hashCode;
    }

    public abstract boolean isEmpty();

    public abstract Iterator<Entry<K, V>> iterator();

    public abstract int size();

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(getClass().getSimpleName());
        stringBuilder.append("{");
        Iterator it = iterator();
        Object obj = 1;
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            if (obj != null) {
                obj = null;
            } else {
                stringBuilder.append(", ");
            }
            stringBuilder.append("(");
            stringBuilder.append(entry.getKey());
            stringBuilder.append("=>");
            stringBuilder.append(entry.getValue());
            stringBuilder.append(")");
        }
        stringBuilder.append("};");
        return stringBuilder.toString();
    }

    public abstract K zzFx();

    public abstract K zzFy();

    public abstract Iterator<Entry<K, V>> zzFz();

    public abstract nh<K, V> zzX(K k);

    public abstract K zzY(K k);

    public abstract void zza(ns<K, V> nsVar);

    public abstract nh<K, V> zzg(K k, V v);
}
