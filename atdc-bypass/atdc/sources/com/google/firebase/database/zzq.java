package com.google.firebase.database;

import com.google.android.gms.internal.qi;

final class zzq implements Runnable {
    private /* synthetic */ Query zzbZm;
    private /* synthetic */ qi zzbZn;

    zzq(Query query, qi qiVar) {
        this.zzbZm = query;
        this.zzbZn = qiVar;
    }

    public final void run() {
        this.zzbZm.zzbYY.zze(this.zzbZn);
    }
}
