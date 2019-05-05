package com.google.firebase.database;

import com.google.firebase.database.Transaction.Handler;

final class zzf implements Runnable {
    private /* synthetic */ DatabaseReference zzbYO;
    private /* synthetic */ Handler zzbYS;
    private /* synthetic */ boolean zzbYT;

    zzf(DatabaseReference databaseReference, Handler handler, boolean z) {
        this.zzbYO = databaseReference;
        this.zzbYS = handler;
        this.zzbYT = z;
    }

    public final void run() {
        this.zzbYO.zzbYY.zza(this.zzbYO.zzbZf, this.zzbYS, this.zzbYT);
    }
}
