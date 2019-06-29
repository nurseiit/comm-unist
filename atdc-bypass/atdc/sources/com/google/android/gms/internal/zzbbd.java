package com.google.android.gms.internal;

import android.app.Dialog;

final class zzbbd extends zzbdl {
    private /* synthetic */ Dialog zzaBT;
    private /* synthetic */ zzbbc zzaBU;

    zzbbd(zzbbc zzbbc, Dialog dialog) {
        this.zzaBU = zzbbc;
        this.zzaBT = dialog;
    }

    public final void zzpA() {
        this.zzaBU.zzaBS.zzpx();
        if (this.zzaBT.isShowing()) {
            this.zzaBT.dismiss();
        }
    }
}
