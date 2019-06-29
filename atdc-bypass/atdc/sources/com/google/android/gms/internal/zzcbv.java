package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;

final class zzcbv extends zzcbw {
    private /* synthetic */ PendingIntent zzbiz;

    zzcbv(zzcbt zzcbt, GoogleApiClient googleApiClient, PendingIntent pendingIntent) {
        this.zzbiz = pendingIntent;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzcdj) zzb).zzc(this.zzbiz);
        setResult(Status.zzaBm);
    }
}
