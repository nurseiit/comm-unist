package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.zzo;
import com.google.android.gms.dynamic.zzn;

final class zzjd extends zza<zzju> {
    private /* synthetic */ zzuq zzAH;
    private /* synthetic */ zziz zzAI;
    private /* synthetic */ String zztD;
    private /* synthetic */ Context zztF;

    zzjd(zziz zziz, Context context, String str, zzuq zzuq) {
        this.zzAI = zziz;
        this.zztF = context;
        this.zztD = str;
        this.zzAH = zzuq;
        super();
    }

    public final /* synthetic */ Object zza(zzkh zzkh) throws RemoteException {
        return zzkh.createAdLoaderBuilder(zzn.zzw(this.zztF), this.zztD, this.zzAH, zzo.GOOGLE_PLAY_SERVICES_VERSION_CODE);
    }

    public final /* synthetic */ Object zzdo() throws RemoteException {
        zzju zza = this.zzAI.zzAB.zza(this.zztF, this.zztD, this.zzAH);
        if (zza != null) {
            return zza;
        }
        zziz.zzb(this.zztF, "native_ad");
        return new zzlj();
    }
}
