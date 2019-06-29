package com.google.android.gms.internal;

import android.graphics.Bitmap;

final class zzavx implements zzavd {
    private /* synthetic */ zzavw zzavx;

    zzavx(zzavw zzavw) {
        this.zzavx = zzavw;
    }

    public final void zzc(Bitmap bitmap) {
        if (bitmap != null) {
            if (this.zzavx.zzavw != null) {
                this.zzavx.zzavw.setVisibility(4);
            }
            this.zzavx.zzavr.setVisibility(0);
            this.zzavx.zzavr.setImageBitmap(bitmap);
        }
    }
}
