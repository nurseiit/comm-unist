package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class zzf extends AnimatorListenerAdapter {
    private /* synthetic */ zza zzatc;
    private /* synthetic */ Runnable zzath;

    zzf(zza zza, Runnable runnable) {
        this.zzatc = zza;
        this.zzath = runnable;
    }

    public final void onAnimationEnd(Animator animator) {
        this.zzatc.setVisibility(8);
        this.zzatc.zzasW = null;
        if (this.zzath != null) {
            this.zzath.run();
        }
    }
}
