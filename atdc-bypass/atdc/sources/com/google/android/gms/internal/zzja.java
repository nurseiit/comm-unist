package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.zzo;
import com.google.android.gms.dynamic.zzn;

final class zzja extends zza<zzjz> {
    private /* synthetic */ zziv zzAG;
    private /* synthetic */ zzuq zzAH;
    private /* synthetic */ zziz zzAI;
    private /* synthetic */ String zztD;
    private /* synthetic */ Context zztF;

    zzja(zziz zziz, Context context, zziv zziv, String str, zzuq zzuq) {
        this.zzAI = zziz;
        this.zztF = context;
        this.zzAG = zziv;
        this.zztD = str;
        this.zzAH = zzuq;
        super();
    }

    public final /* synthetic */ Object zza(zzkh zzkh) throws RemoteException {
        return zzkh.createBannerAdManager(zzn.zzw(this.zztF), this.zzAG, this.zztD, this.zzAH, zzo.GOOGLE_PLAY_SERVICES_VERSION_CODE);
    }

    public final /* synthetic */ Object zzdo() throws RemoteException {
        zzjz zza = this.zzAI.zzAA.zza(this.zztF, this.zzAG, this.zztD, this.zzAH, 1);
        if (zza != null) {
            return zza;
        }
        zziz.zzb(this.zztF, "banner");
        return new zzln();
    }
}
