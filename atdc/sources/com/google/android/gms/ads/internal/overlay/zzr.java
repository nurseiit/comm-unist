package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import com.google.android.gms.internal.zzaka;
import com.google.android.gms.internal.zzzn;

@zzzn
public final class zzr {
    public final int index;
    public final ViewGroup parent;
    public final LayoutParams zzPa;
    public final Context zzqD;

    public zzr(zzaka zzaka) throws zzp {
        this.zzPa = zzaka.getLayoutParams();
        ViewParent parent = zzaka.getParent();
        this.zzqD = zzaka.zzit();
        if (parent == null || !(parent instanceof ViewGroup)) {
            throw new zzp("Could not get the parent of the WebView for an overlay.");
        }
        this.parent = (ViewGroup) parent;
        this.index = this.parent.indexOfChild(zzaka.getView());
        this.parent.removeView(zzaka.getView());
        zzaka.zzA(true);
    }
}
