package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;

final class zzcbu extends zzcbw {
    private /* synthetic */ long zzbiy;
    private /* synthetic */ PendingIntent zzbiz;

    zzcbu(zzcbt zzcbt, GoogleApiClient googleApiClient, long j, PendingIntent pendingIntent) {
        this.zzbiy = j;
        this.zzbiz = pendingIntent;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzcdj) zzb).zza(this.zzbiy, this.zzbiz);
        setResult(Status.zzaBm);
    }
}
