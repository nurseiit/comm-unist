package com.google.android.gms.location.places.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.places.AddPlaceRequest;
import com.google.android.gms.location.places.zzm;
import com.google.android.gms.location.places.zzm.zzc;

final class zzi extends zzc<zzm> {
    private /* synthetic */ AddPlaceRequest zzbkj;

    zzi(zzh zzh, Api api, GoogleApiClient googleApiClient, AddPlaceRequest addPlaceRequest) {
        this.zzbkj = addPlaceRequest;
        super(api, googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzm) zzb).zza(new zzm((zzc) this), this.zzbkj);
    }
}
