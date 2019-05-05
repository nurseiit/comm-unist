package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;

final class zzccl extends zzccm {
    private /* synthetic */ PendingIntent zzbiz;

    zzccl(zzccb zzccb, GoogleApiClient googleApiClient, PendingIntent pendingIntent) {
        this.zzbiz = pendingIntent;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzcdj) zzb).zza(this.zzbiz, new zzccn(this));
    }
}
