package com.google.firebase.database;

import java.util.Iterator;

final class zza implements Iterable<DataSnapshot> {
    final /* synthetic */ Iterator zzbYF;
    final /* synthetic */ DataSnapshot zzbYG;

    zza(DataSnapshot dataSnapshot, Iterator it) {
        this.zzbYG = dataSnapshot;
        this.zzbYF = it;
    }

    public final Iterator<DataSnapshot> iterator() {
        return new zzb(this);
    }
}
