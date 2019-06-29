package com.google.android.gms.internal;

import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.DatabaseReference.CompletionListener;

final class rr implements Runnable {
    private /* synthetic */ CompletionListener zzcdD;
    private /* synthetic */ DatabaseError zzcdV;
    private /* synthetic */ DatabaseReference zzcdW;

    rr(qu quVar, CompletionListener completionListener, DatabaseError databaseError, DatabaseReference databaseReference) {
        this.zzcdD = completionListener;
        this.zzcdV = databaseError;
        this.zzcdW = databaseReference;
    }

    public final void run() {
        this.zzcdD.onComplete(this.zzcdV, this.zzcdW);
    }
}
