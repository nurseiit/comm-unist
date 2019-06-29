package com.google.android.gms.cast.framework;

import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;

public final class zza extends zzg {
    private final AppVisibilityListener zzarJ;

    public zza(AppVisibilityListener appVisibilityListener) {
        this.zzarJ = appVisibilityListener;
    }

    public final void onAppEnteredBackground() {
        this.zzarJ.onAppEnteredBackground();
    }

    public final void onAppEnteredForeground() {
        this.zzarJ.onAppEnteredForeground();
    }

    public final int zznm() {
        return 11020208;
    }

    public final IObjectWrapper zznn() {
        return zzn.zzw(this.zzarJ);
    }
}
