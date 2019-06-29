package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.fitness.request.DataDeleteRequest;

final class zzbyc extends zzbvd {
    private /* synthetic */ DataDeleteRequest zzaVI;

    zzbyc(zzbya zzbya, GoogleApiClient googleApiClient, DataDeleteRequest dataDeleteRequest) {
        this.zzaVI = dataDeleteRequest;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbwn) ((zzbva) zzb).zzrf()).zza(new DataDeleteRequest(this.zzaVI, new zzbzi(this)));
    }
}
