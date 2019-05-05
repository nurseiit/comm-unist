package com.google.android.gms.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.support.v4.util.SimpleArrayMap;

public class hk extends AnimatorListenerAdapter {
    private SimpleArrayMap<Animator, Boolean> zzbUm = new SimpleArrayMap();

    public void onAnimationCancel(Animator animator) {
        this.zzbUm.put(animator, Boolean.valueOf(true));
    }

    public void onAnimationStart(Animator animator) {
        this.zzbUm.put(animator, Boolean.valueOf(false));
    }

    /* Access modifiers changed, original: protected|final */
    public final boolean zzb(Animator animator) {
        return this.zzbUm.containsKey(animator) && ((Boolean) this.zzbUm.get(animator)).booleanValue();
    }
}
