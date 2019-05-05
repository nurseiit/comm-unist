package com.google.android.gms.cast.framework;

import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;

public final class zzd extends zzp {
    private final CastStateListener zzasj;

    public zzd(CastStateListener castStateListener) {
        this.zzasj = castStateListener;
    }

    public final void onCastStateChanged(int i) {
        this.zzasj.onCastStateChanged(i);
    }

    public final IObjectWrapper zznn() {
        return zzn.zzw(this.zzasj);
    }
}
