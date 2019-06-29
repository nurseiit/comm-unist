package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.view.View;
import android.view.View.OnLayoutChangeListener;

final class zzd implements OnLayoutChangeListener {
    private /* synthetic */ zza zzatc;
    private /* synthetic */ Runnable zzatg = null;

    zzd(zza zza, Runnable runnable) {
        this.zzatc = zza;
    }

    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (this.zzatg != null) {
            this.zzatg.run();
        }
        this.zzatc.zznN();
        this.zzatc.removeOnLayoutChangeListener(this);
    }
}
