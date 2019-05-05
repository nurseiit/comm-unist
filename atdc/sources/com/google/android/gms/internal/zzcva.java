package com.google.android.gms.internal;

import java.util.Map;

final class zzcva implements Runnable {
    private /* synthetic */ long zzbEV;
    private /* synthetic */ zzcuy zzbIn;
    private /* synthetic */ String zzbIo;
    private /* synthetic */ String zzbIp;
    private /* synthetic */ Map zzbIq;
    private /* synthetic */ String zzbIr;
    private /* synthetic */ zzcuz zzbIs;
    private /* synthetic */ String zzsD;

    zzcva(zzcuz zzcuz, zzcuy zzcuy, long j, String str, String str2, String str3, Map map, String str4) {
        this.zzbIs = zzcuz;
        this.zzbIn = zzcuy;
        this.zzbEV = j;
        this.zzsD = str;
        this.zzbIo = str2;
        this.zzbIp = str3;
        this.zzbIq = map;
        this.zzbIr = str4;
    }

    public final void run() {
        if (this.zzbIs.zzbIm == null) {
            zzcwd zzCA = zzcwd.zzCA();
            zzCA.zza(this.zzbIs.mContext, this.zzbIn);
            this.zzbIs.zzbIm = zzCA.zzCB();
        }
        this.zzbIs.zzbIm.zza(this.zzbEV, this.zzsD, this.zzbIo, this.zzbIp, this.zzbIq, this.zzbIr);
    }
}
