package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class zze extends AnimatorListenerAdapter {
    private /* synthetic */ zza zzatc;

    zze(zza zza) {
        this.zzatc = zza;
    }

    public final void onAnimationEnd(Animator animator) {
        this.zzatc.zzasW = this.zzatc.zznR();
        this.zzatc.zzasW.start();
    }
}
