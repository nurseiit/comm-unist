package com.google.firebase.database;

import com.google.android.gms.internal.xf;
import com.google.android.gms.internal.xl;
import java.util.Iterator;

final class zzb implements Iterator<DataSnapshot> {
    private /* synthetic */ zza zzbYH;

    zzb(zza zza) {
        this.zzbYH = zza;
    }

    public final boolean hasNext() {
        return this.zzbYH.zzbYF.hasNext();
    }

    public final /* synthetic */ Object next() {
        xl xlVar = (xl) this.zzbYH.zzbYF.next();
        return new DataSnapshot(this.zzbYH.zzbYG.zzbYE.child(xlVar.zzJk().asString()), xf.zzj(xlVar.zzFn()));
    }

    public final void remove() {
        throw new UnsupportedOperationException("remove called on immutable collection");
    }
}
