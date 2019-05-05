package com.google.android.gms.internal;

final class zzcfm implements Runnable {
    private /* synthetic */ String zzbqV;
    private /* synthetic */ zzcfl zzbqW;

    zzcfm(zzcfl zzcfl, String str) {
        this.zzbqW = zzcfl;
        this.zzbqV = str;
    }

    public final void run() {
        zzcfw zzwG = this.zzbqW.zzboe.zzwG();
        if (zzwG.isInitialized()) {
            zzwG.zzbrj.zzf(this.zzbqV, 1);
        } else {
            this.zzbqW.zzk(6, "Persisted config not initialized. Not logging error/warn");
        }
    }
}
