package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.dynamic.zzn;

final class zzado implements Runnable {
    private /* synthetic */ zzut zzWF;
    private /* synthetic */ zzadm zzWG;
    private /* synthetic */ zzadu zzWH;
    private /* synthetic */ zzir zztY;

    zzado(zzadm zzadm, zzut zzut, zzir zzir, zzadu zzadu) {
        this.zzWG = zzadm;
        this.zzWF = zzut;
        this.zztY = zzir;
        this.zzWH = zzadu;
    }

    public final void run() {
        try {
            this.zzWF.zza(zzn.zzw(this.zzWG.mContext), this.zztY, null, this.zzWH, this.zzWG.zzWA);
        } catch (RemoteException e) {
            String str = "Fail to initialize adapter ";
            String valueOf = String.valueOf(this.zzWG.zzMs);
            zzajc.zzc(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), e);
            this.zzWG.zza(this.zzWG.zzMs, 0);
        }
    }
}
