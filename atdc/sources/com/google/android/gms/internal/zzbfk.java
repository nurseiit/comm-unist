package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;

final class zzbfk extends ConstantState {
    int mChangingConfigurations;
    int zzaGD;

    zzbfk(zzbfk zzbfk) {
        if (zzbfk != null) {
            this.mChangingConfigurations = zzbfk.mChangingConfigurations;
            this.zzaGD = zzbfk.zzaGD;
        }
    }

    public final int getChangingConfigurations() {
        return this.mChangingConfigurations;
    }

    public final Drawable newDrawable() {
        return new zzbfg(this);
    }
}
