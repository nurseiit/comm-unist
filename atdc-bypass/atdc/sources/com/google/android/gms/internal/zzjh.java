package com.google.android.gms.internal;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zzn;

final class zzjh extends zza<zzwx> {
    private /* synthetic */ Activity val$activity;
    private /* synthetic */ zziz zzAI;

    zzjh(zziz zziz, Activity activity) {
        this.zzAI = zziz;
        this.val$activity = activity;
        super();
    }

    public final /* synthetic */ Object zza(zzkh zzkh) throws RemoteException {
        return zzkh.createAdOverlay(zzn.zzw(this.val$activity));
    }

    public final /* synthetic */ Object zzdo() throws RemoteException {
        zzwx zze = this.zzAI.zzAF.zze(this.val$activity);
        if (zze != null) {
            return zze;
        }
        zziz.zzb(this.val$activity, "ad_overlay");
        return null;
    }
}
