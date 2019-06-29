package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.zzo;
import com.google.android.gms.dynamic.zzn;
import com.google.firebase.analytics.FirebaseAnalytics.Event;

final class zzjb extends zza<zzjz> {
    private /* synthetic */ zziv zzAG;
    private /* synthetic */ zziz zzAI;
    private /* synthetic */ String zztD;
    private /* synthetic */ Context zztF;

    zzjb(zziz zziz, Context context, zziv zziv, String str) {
        this.zzAI = zziz;
        this.zztF = context;
        this.zzAG = zziv;
        this.zztD = str;
        super();
    }

    public final /* synthetic */ Object zza(zzkh zzkh) throws RemoteException {
        return zzkh.createSearchAdManager(zzn.zzw(this.zztF), this.zzAG, this.zztD, zzo.GOOGLE_PLAY_SERVICES_VERSION_CODE);
    }

    public final /* synthetic */ Object zzdo() throws RemoteException {
        zzjz zza = this.zzAI.zzAA.zza(this.zztF, this.zzAG, this.zztD, null, 3);
        if (zza != null) {
            return zza;
        }
        zziz.zzb(this.zztF, Event.SEARCH);
        return new zzln();
    }
}
