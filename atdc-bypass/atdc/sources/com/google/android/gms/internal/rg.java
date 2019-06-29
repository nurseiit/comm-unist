package com.google.android.gms.internal;

import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;

final class rg implements Runnable {
    private /* synthetic */ rv zzcdK;
    private /* synthetic */ DatabaseError zzcdL;
    private /* synthetic */ DataSnapshot zzcdM;

    rg(qu quVar, rv rvVar, DatabaseError databaseError, DataSnapshot dataSnapshot) {
        this.zzcdK = rvVar;
        this.zzcdL = databaseError;
        this.zzcdM = dataSnapshot;
    }

    public final void run() {
        this.zzcdK.zzcdZ.onComplete(this.zzcdL, false, this.zzcdM);
    }
}
