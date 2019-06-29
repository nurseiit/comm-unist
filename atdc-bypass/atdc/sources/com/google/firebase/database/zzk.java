package com.google.firebase.database;

import java.util.Iterator;

final class zzk implements Iterable<MutableData> {
    final /* synthetic */ Iterator zzbYF;
    final /* synthetic */ MutableData zzbZd;

    zzk(MutableData mutableData, Iterator it) {
        this.zzbZd = mutableData;
        this.zzbYF = it;
    }

    public final Iterator<MutableData> iterator() {
        return new zzl(this);
    }
}
