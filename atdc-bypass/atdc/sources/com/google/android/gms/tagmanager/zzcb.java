package com.google.android.gms.tagmanager;

final class zzcb implements Runnable {
    private /* synthetic */ zzbz zzbEU;
    private /* synthetic */ long zzbEV;
    private /* synthetic */ zzca zzbEW;
    private /* synthetic */ String zzsD;

    zzcb(zzca zzca, zzbz zzbz, long j, String str) {
        this.zzbEW = zzca;
        this.zzbEU = zzbz;
        this.zzbEV = j;
        this.zzsD = str;
    }

    public final void run() {
        if (this.zzbEW.zzbET == null) {
            zzfo zzBV = zzfo.zzBV();
            zzBV.zza(this.zzbEW.mContext, this.zzbEU);
            this.zzbEW.zzbET = zzBV.zzBW();
        }
        this.zzbEW.zzbET.zzb(this.zzbEV, this.zzsD);
    }
}
