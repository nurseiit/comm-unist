package com.google.android.gms.internal;

import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;

final class zzccf extends zzccm {
    private /* synthetic */ Location zzbiH;

    zzccf(zzccb zzccb, GoogleApiClient googleApiClient, Location location) {
        this.zzbiH = location;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzcdj) zzb).zzc(this.zzbiH);
        setResult(Status.zzaBm);
    }
}
