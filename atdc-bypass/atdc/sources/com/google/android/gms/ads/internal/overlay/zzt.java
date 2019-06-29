package com.google.android.gms.ads.internal.overlay;

import android.graphics.drawable.Drawable;

final class zzt implements Runnable {
    private /* synthetic */ Drawable zzPb;
    private /* synthetic */ zzs zzPc;

    zzt(zzs zzs, Drawable drawable) {
        this.zzPc = zzs;
        this.zzPb = drawable;
    }

    public final void run() {
        this.zzPc.zzOY.mActivity.getWindow().setBackgroundDrawable(this.zzPb);
    }
}
