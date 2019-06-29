package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.fitness.request.DataUpdateListenerRegistrationRequest;

final class zzbye extends zzbvd {
    private /* synthetic */ DataUpdateListenerRegistrationRequest zzaVK;

    zzbye(zzbya zzbya, GoogleApiClient googleApiClient, DataUpdateListenerRegistrationRequest dataUpdateListenerRegistrationRequest) {
        this.zzaVK = dataUpdateListenerRegistrationRequest;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbwn) ((zzbva) zzb).zzrf()).zza(new DataUpdateListenerRegistrationRequest(this.zzaVK, new zzbzi(this)));
    }
}
