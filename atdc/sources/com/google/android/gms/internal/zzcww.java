package com.google.android.gms.internal;

import android.content.ComponentCallbacks2;
import android.content.res.Configuration;

final class zzcww implements ComponentCallbacks2 {
    final /* synthetic */ zzcwn zzbJp;

    zzcww(zzcwn zzcwn) {
        this.zzbJp = zzcwn;
    }

    public final void onConfigurationChanged(Configuration configuration) {
    }

    public final void onLowMemory() {
    }

    public final void onTrimMemory(int i) {
        if (i == 20) {
            this.zzbJp.zzbHL.execute(new zzcwx(this));
        }
    }
}
