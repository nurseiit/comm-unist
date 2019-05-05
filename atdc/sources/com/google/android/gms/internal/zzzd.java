package com.google.android.gms.internal;

import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import java.lang.ref.WeakReference;

final class zzzd implements OnGlobalLayoutListener {
    private /* synthetic */ zzyx zzSb;
    private /* synthetic */ WeakReference zzSd;

    zzzd(zzyx zzyx, WeakReference weakReference) {
        this.zzSb = zzyx;
        this.zzSd = weakReference;
    }

    public final void onGlobalLayout() {
        this.zzSb.zza(this.zzSd, false);
    }
}
