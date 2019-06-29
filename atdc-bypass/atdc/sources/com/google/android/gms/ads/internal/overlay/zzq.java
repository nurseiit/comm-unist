package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import com.google.android.gms.internal.zzahq;
import com.google.android.gms.internal.zzzn;

@zzzn
final class zzq extends RelativeLayout {
    boolean zzOZ;
    private zzahq zzwB;

    public zzq(Context context, String str, String str2) {
        super(context);
        this.zzwB = new zzahq(context, str);
        this.zzwB.zzaO(str2);
    }

    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!this.zzOZ) {
            this.zzwB.zzf(motionEvent);
        }
        return false;
    }
}
