package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.zzo;
import com.google.android.gms.dynamic.zzn;

final class zzjg extends zza<zzacy> {
    private /* synthetic */ zzuq zzAH;
    private /* synthetic */ zziz zzAI;
    private /* synthetic */ Context zztF;

    zzjg(zziz zziz, Context context, zzuq zzuq) {
        this.zzAI = zziz;
        this.zztF = context;
        this.zzAH = zzuq;
        super();
    }

    public final /* synthetic */ Object zza(zzkh zzkh) throws RemoteException {
        return zzkh.createRewardedVideoAd(zzn.zzw(this.zztF), this.zzAH, zzo.GOOGLE_PLAY_SERVICES_VERSION_CODE);
    }

    public final /* synthetic */ Object zzdo() throws RemoteException {
        zzacy zza = this.zzAI.zzAE.zza(this.zztF, this.zzAH);
        if (zza != null) {
            return zza;
        }
        zziz.zzb(this.zztF, "rewarded_video");
        return new zzlr();
    }
}
