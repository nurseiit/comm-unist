package com.google.android.gms.internal;

import com.google.firebase.database.DatabaseError;

final class rl implements Runnable {
    private /* synthetic */ rv zzcdK;
    private /* synthetic */ DatabaseError zzcdO;

    rl(qu quVar, rv rvVar, DatabaseError databaseError) {
        this.zzcdK = rvVar;
        this.zzcdO = databaseError;
    }

    public final void run() {
        this.zzcdK.zzcdZ.onComplete(this.zzcdO, false, null);
    }
}
