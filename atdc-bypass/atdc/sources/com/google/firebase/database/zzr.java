package com.google.firebase.database;

import com.google.android.gms.internal.qi;

final class zzr implements Runnable {
    private /* synthetic */ Query zzbZm;
    private /* synthetic */ qi zzbZo;

    zzr(Query query, qi qiVar) {
        this.zzbZm = query;
        this.zzbZo = qiVar;
    }

    public final void run() {
        this.zzbZm.zzbYY.zzf(this.zzbZo);
    }
}
