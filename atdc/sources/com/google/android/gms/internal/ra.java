package com.google.android.gms.internal;

import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.Transaction.Handler;

final class ra implements Runnable {
    private /* synthetic */ Handler zzbYS;
    private /* synthetic */ DatabaseError zzcdF;
    private /* synthetic */ DataSnapshot zzcdG;

    ra(qu quVar, Handler handler, DatabaseError databaseError, DataSnapshot dataSnapshot) {
        this.zzbYS = handler;
        this.zzcdF = databaseError;
        this.zzcdG = dataSnapshot;
    }

    public final void run() {
        this.zzbYS.onComplete(this.zzcdF, false, this.zzcdG);
    }
}
