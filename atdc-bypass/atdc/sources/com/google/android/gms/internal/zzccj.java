package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationRequest;

final class zzccj extends zzccm {
    private /* synthetic */ LocationRequest zzbiD;
    private /* synthetic */ PendingIntent zzbiz;

    zzccj(zzccb zzccb, GoogleApiClient googleApiClient, LocationRequest locationRequest, PendingIntent pendingIntent) {
        this.zzbiD = locationRequest;
        this.zzbiz = pendingIntent;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzcdj) zzb).zza(this.zzbiD, this.zzbiz, new zzccn(this));
    }
}
