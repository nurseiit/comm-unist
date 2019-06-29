package com.google.firebase.database;

final class zzs implements Runnable {
    private /* synthetic */ Query zzbZm;
    private /* synthetic */ boolean zzbZp;

    zzs(Query query, boolean z) {
        this.zzbZm = query;
        this.zzbZp = z;
    }

    public final void run() {
        this.zzbZm.zzbYY.zza(this.zzbZm.zzFr(), this.zzbZp);
    }
}
