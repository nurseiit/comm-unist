package com.google.android.gms.internal;

import android.view.ViewGroup;

final class zzauu implements Runnable {
    private /* synthetic */ zzaut zzasG;

    zzauu(zzaut zzaut) {
        this.zzasG = zzaut;
    }

    public final void run() {
        if (this.zzasG.zzasF.zzasE) {
            ((ViewGroup) this.zzasG.zzasF.mActivity.getWindow().getDecorView()).removeView(this.zzasG.zzasF);
            if (this.zzasG.zzasF.zzaso != null) {
                this.zzasG.zzasF.zzaso.onOverlayDismissed();
            }
            this.zzasG.zzasF.reset();
        }
    }
}
