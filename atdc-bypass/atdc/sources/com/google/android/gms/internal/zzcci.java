package com.google.android.gms.internal;

import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationRequest;

final class zzcci extends zzccm {
    private /* synthetic */ LocationRequest zzbiD;
    private /* synthetic */ LocationCallback zzbiF;
    private /* synthetic */ Looper zzbiI;

    zzcci(zzccb zzccb, GoogleApiClient googleApiClient, LocationRequest locationRequest, LocationCallback locationCallback, Looper looper) {
        this.zzbiD = locationRequest;
        this.zzbiF = locationCallback;
        this.zzbiI = looper;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzcdj) zzb).zza(zzcdn.zza(this.zzbiD), zzbea.zzb(this.zzbiF, zzceb.zzb(this.zzbiI), LocationCallback.class.getSimpleName()), new zzccn(this));
    }
}
