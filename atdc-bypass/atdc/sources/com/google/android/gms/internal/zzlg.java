package com.google.android.gms.internal;

import android.content.Context;

final class zzlg implements Runnable {
    private /* synthetic */ zzlf zzBq;
    private /* synthetic */ Context zztF;

    zzlg(zzlf zzlf, Context context) {
        this.zzBq = zzlf;
        this.zztF = context;
    }

    public final void run() {
        this.zzBq.getRewardedVideoAdInstance(this.zztF);
    }
}
