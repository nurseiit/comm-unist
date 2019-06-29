package com.google.android.gms.internal;

import android.os.RemoteException;

final class zzcxb implements Runnable {
    private /* synthetic */ zzcvd zzbJG;
    private /* synthetic */ zzcxa zzbJH;
    private /* synthetic */ String zzbJw;
    private /* synthetic */ String zzbJx;
    private /* synthetic */ String zzbJy;

    zzcxb(zzcxa zzcxa, String str, String str2, String str3, zzcvd zzcvd) {
        this.zzbJH = zzcxa;
        this.zzbJw = str;
        this.zzbJx = str2;
        this.zzbJy = str3;
        this.zzbJG = zzcvd;
    }

    public final void run() {
        boolean z = true;
        try {
            if (!this.zzbJH.zzbJE.containsKey(this.zzbJw)) {
                this.zzbJH.zzbJE.put(this.zzbJw, this.zzbJH.zzbJF.zzm(this.zzbJw, this.zzbJx, this.zzbJy));
            }
        } catch (Throwable th) {
            zzcup.zza("Fail to load container: ", th, this.zzbJH.mContext);
            z = false;
        }
        try {
            if (this.zzbJG != null) {
                this.zzbJG.zza(z, this.zzbJw);
            }
        } catch (RemoteException e) {
            zzcup.zza("Error relaying callback: ", e, this.zzbJH.mContext);
        }
    }
}
