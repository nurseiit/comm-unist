package com.google.firebase.database;

import com.google.android.gms.internal.xl;
import java.util.Iterator;

final class zzl implements Iterator<MutableData> {
    private /* synthetic */ zzk zzbZe;

    zzl(zzk zzk) {
        this.zzbZe = zzk;
    }

    public final boolean hasNext() {
        return this.zzbZe.zzbYF.hasNext();
    }

    public final /* synthetic */ Object next() {
        return new MutableData(this.zzbZe.zzbZd.zzbZb, this.zzbZe.zzbZd.zzbZc.zza(((xl) this.zzbZe.zzbYF.next()).zzJk()), null);
    }

    public final void remove() {
        throw new UnsupportedOperationException("remove called on immutable collection");
    }
}
