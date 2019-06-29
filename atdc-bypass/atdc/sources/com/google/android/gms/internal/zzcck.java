package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationListener;

final class zzcck extends zzccm {
    private /* synthetic */ LocationListener zzbiE;

    zzcck(zzccb zzccb, GoogleApiClient googleApiClient, LocationListener locationListener) {
        this.zzbiE = locationListener;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzcdj) zzb).zza(zzbea.zza(this.zzbiE, LocationListener.class.getSimpleName()), new zzccn(this));
    }
}
