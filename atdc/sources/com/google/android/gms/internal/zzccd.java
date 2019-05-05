package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationCallback;

final class zzccd extends zzccm {
    private /* synthetic */ LocationCallback zzbiF;

    zzccd(zzccb zzccb, GoogleApiClient googleApiClient, LocationCallback locationCallback) {
        this.zzbiF = locationCallback;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzcdj) zzb).zzb(zzbea.zza(this.zzbiF, LocationCallback.class.getSimpleName()), new zzccn(this));
    }
}
