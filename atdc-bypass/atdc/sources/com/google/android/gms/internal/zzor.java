package com.google.android.gms.internal;

import android.view.MotionEvent;
import android.view.View;

final class zzor implements zznw {
    private /* synthetic */ zzop zzIB;
    private /* synthetic */ View zzIC;

    zzor(zzop zzop, View view) {
        this.zzIB = zzop;
        this.zzIC = view;
    }

    public final void zzc(MotionEvent motionEvent) {
        this.zzIB.onTouch(null, motionEvent);
    }

    public final void zzeo() {
        this.zzIB.onClick(this.zzIC);
    }
}
