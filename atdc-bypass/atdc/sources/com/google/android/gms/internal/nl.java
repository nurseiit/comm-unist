package com.google.android.gms.internal;

import java.util.AbstractMap.SimpleEntry;
import java.util.Comparator;
import java.util.EmptyStackException;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.NoSuchElementException;
import java.util.Stack;

public final class nl<K, V> implements Iterator<Entry<K, V>> {
    private final Stack<nu<K, V>> zzbZT = new Stack();
    private final boolean zzbZU;

    nl(nq<K, V> nqVar, K k, Comparator<K> comparator, boolean z) {
        this.zzbZU = z;
        nq nqVar2;
        while (!nqVar2.isEmpty()) {
            this.zzbZT.push((nu) nqVar2);
            nqVar2 = z ? nqVar2.zzFH() : nqVar2.zzFG();
        }
    }

    private final Entry<K, V> next() {
        try {
            nu nuVar = (nu) this.zzbZT.pop();
            SimpleEntry simpleEntry = new SimpleEntry(nuVar.getKey(), nuVar.getValue());
            nq zzFG;
            if (this.zzbZU) {
                for (zzFG = nuVar.zzFG(); !zzFG.isEmpty(); zzFG = zzFG.zzFH()) {
                    this.zzbZT.push((nu) zzFG);
                }
            } else {
                for (zzFG = nuVar.zzFH(); !zzFG.isEmpty(); zzFG = zzFG.zzFG()) {
                    this.zzbZT.push((nu) zzFG);
                }
            }
            return simpleEntry;
        } catch (EmptyStackException unused) {
            throw new NoSuchElementException();
        }
    }

    public final boolean hasNext() {
        return this.zzbZT.size() > 0;
    }

    public final void remove() {
        throw new UnsupportedOperationException("remove called on immutable collection");
    }
}
