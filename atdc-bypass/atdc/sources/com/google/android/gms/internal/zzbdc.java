package com.google.android.gms.internal;

final class zzbdc implements zzbax {
    private /* synthetic */ zzbdb zzaEm;

    zzbdc(zzbdb zzbdb) {
        this.zzaEm = zzbdb;
    }

    public final void zzac(boolean z) {
        this.zzaEm.mHandler.sendMessage(this.zzaEm.mHandler.obtainMessage(1, Boolean.valueOf(z)));
    }
}
