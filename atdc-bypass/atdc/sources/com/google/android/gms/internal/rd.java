package com.google.android.gms.internal;

import com.google.firebase.database.DataSnapshot;

final class rd implements Runnable {
    private /* synthetic */ DataSnapshot zzcdG;
    private /* synthetic */ rv zzcdJ;

    rd(rc rcVar, rv rvVar, DataSnapshot dataSnapshot) {
        this.zzcdJ = rvVar;
        this.zzcdG = dataSnapshot;
    }

    public final void run() {
        this.zzcdJ.zzcdZ.onComplete(null, true, this.zzcdG);
    }
}
