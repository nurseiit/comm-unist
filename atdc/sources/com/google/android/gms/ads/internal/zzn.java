package com.google.android.gms.ads.internal;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

final class zzn implements OnTouchListener {
    private /* synthetic */ zzl zzte;
    private /* synthetic */ zzw zztf;

    zzn(zzl zzl, zzw zzw) {
        this.zzte = zzl;
        this.zztf = zzw;
    }

    public final boolean onTouch(View view, MotionEvent motionEvent) {
        this.zztf.recordClick();
        if (this.zzte.zztc != null) {
            this.zzte.zztc.zzha();
        }
        return false;
    }
}
