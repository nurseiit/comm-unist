package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.GeofencingRequest;

final class zzccr extends zzcct {
    private /* synthetic */ PendingIntent zzaVL;
    private /* synthetic */ GeofencingRequest zzbiK;

    zzccr(zzccq zzccq, GoogleApiClient googleApiClient, GeofencingRequest geofencingRequest, PendingIntent pendingIntent) {
        this.zzbiK = geofencingRequest;
        this.zzaVL = pendingIntent;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzcdj) zzb).zza(this.zzbiK, this.zzaVL, (zzbaz) this);
    }
}
