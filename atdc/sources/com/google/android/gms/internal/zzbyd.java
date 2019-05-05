package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.fitness.request.DataUpdateRequest;

final class zzbyd extends zzbvd {
    private /* synthetic */ DataUpdateRequest zzaVJ;

    zzbyd(zzbya zzbya, GoogleApiClient googleApiClient, DataUpdateRequest dataUpdateRequest) {
        this.zzaVJ = dataUpdateRequest;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbwn) ((zzbva) zzb).zzrf()).zza(new DataUpdateRequest(this.zzaVJ, new zzbzi(this)));
    }
}
