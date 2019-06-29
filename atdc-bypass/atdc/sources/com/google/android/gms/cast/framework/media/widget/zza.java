package com.google.android.gms.cast.framework.media.widget;

import android.graphics.Bitmap;
import com.google.android.gms.internal.zzavd;

final class zza implements zzavd {
    private /* synthetic */ ExpandedControllerActivity zzawF;

    zza(ExpandedControllerActivity expandedControllerActivity) {
        this.zzawF = expandedControllerActivity;
    }

    public final void zzc(Bitmap bitmap) {
        if (bitmap != null) {
            if (this.zzawF.zzawB != null) {
                this.zzawF.zzawB.setVisibility(8);
            }
            if (this.zzawF.zzawA != null) {
                this.zzawF.zzawA.setVisibility(0);
                this.zzawF.zzawA.setImageBitmap(bitmap);
            }
        }
    }
}
