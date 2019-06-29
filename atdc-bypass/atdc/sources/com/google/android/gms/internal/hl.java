package com.google.android.gms.internal;

import android.animation.Animator;
import android.support.annotation.Nullable;

public final class hl extends hk {
    protected final Animator zzbUn;
    private final hn zzbUo;
    private final Runnable zzbUp;
    private hp zzbUq = new hm(this);

    private hl(Animator animator, @Nullable Runnable runnable) {
        this.zzbUn = animator;
        this.zzbUp = null;
        this.zzbUo = hn.zzEd();
    }

    public static void zza(Animator animator, @Nullable Runnable runnable) {
        animator.addListener(new hl(animator, null));
    }

    public final void onAnimationEnd(Animator animator) {
        if (!zzb(animator)) {
            this.zzbUo.zza(this.zzbUq);
        }
    }
}
