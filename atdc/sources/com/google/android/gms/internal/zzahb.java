package com.google.android.gms.internal;

import android.content.Context;

final class zzahb implements Runnable {
    private /* synthetic */ zzagz zzZy;
    private /* synthetic */ Context zztF;

    zzahb(zzagz zzagz, Context context) {
        this.zzZy = zzagz;
        this.zztF = context;
    }

    public final void run() {
        synchronized (this.zzZy.mLock) {
            this.zzZy.zzJP = zzagz.zzF(this.zztF);
            this.zzZy.mLock.notifyAll();
        }
    }
}
