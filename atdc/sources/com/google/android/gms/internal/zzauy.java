package com.google.android.gms.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class zzauy extends AnimatorListenerAdapter {
    private /* synthetic */ zzaux zzasK;

    zzauy(zzaux zzaux) {
        this.zzasK = zzaux;
    }

    public final void onAnimationEnd(Animator animator) {
        this.zzasK.zzasJ.zznM();
    }
}
