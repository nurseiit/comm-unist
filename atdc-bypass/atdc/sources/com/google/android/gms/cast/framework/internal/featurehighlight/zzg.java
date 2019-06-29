package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class zzg extends AnimatorListenerAdapter {
    private /* synthetic */ zza zzatc;
    private /* synthetic */ Runnable zzati;

    zzg(zza zza, Runnable runnable) {
        this.zzatc = zza;
        this.zzati = runnable;
    }

    public final void onAnimationEnd(Animator animator) {
        this.zzatc.setVisibility(8);
        this.zzatc.zzasW = null;
        if (this.zzati != null) {
            this.zzati.run();
        }
    }
}
