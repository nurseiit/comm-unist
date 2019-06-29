package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;

final class zzccc extends zzccm {
    private /* synthetic */ LocationRequest zzbiD;
    private /* synthetic */ LocationListener zzbiE;

    zzccc(zzccb zzccb, GoogleApiClient googleApiClient, LocationRequest locationRequest, LocationListener locationListener) {
        this.zzbiD = locationRequest;
        this.zzbiE = locationListener;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzcdj) zzb).zza(this.zzbiD, zzbea.zzb(this.zzbiE, zzceb.zzwd(), LocationListener.class.getSimpleName()), new zzccn(this));
    }
}
