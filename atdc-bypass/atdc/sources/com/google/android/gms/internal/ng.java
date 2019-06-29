package com.google.android.gms.internal;

import java.util.AbstractMap.SimpleImmutableEntry;
import java.util.Iterator;
import java.util.Map.Entry;

final class ng implements Iterator<Entry<K, V>> {
    private int zzbZO = this.zzbZP;
    private /* synthetic */ int zzbZP;
    private /* synthetic */ boolean zzbZQ;
    private /* synthetic */ nf zzbZR;

    ng(nf nfVar, int i, boolean z) {
        this.zzbZR = nfVar;
        this.zzbZP = i;
        this.zzbZQ = z;
    }

    public final boolean hasNext() {
        return this.zzbZQ ? this.zzbZO >= 0 : this.zzbZO < this.zzbZR.zzbZL.length;
    }

    public final /* synthetic */ Object next() {
        Object obj = this.zzbZR.zzbZL[this.zzbZO];
        Object obj2 = this.zzbZR.zzbZM[this.zzbZO];
        this.zzbZO = this.zzbZQ ? this.zzbZO - 1 : this.zzbZO + 1;
        return new SimpleImmutableEntry(obj, obj2);
    }

    public final void remove() {
        throw new UnsupportedOperationException("Can't remove elements from ImmutableSortedMap");
    }
}
