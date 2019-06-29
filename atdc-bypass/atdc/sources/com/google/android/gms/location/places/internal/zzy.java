package com.google.android.gms.location.places.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.places.PlaceFilter;
import com.google.android.gms.location.places.zzm;
import com.google.android.gms.location.places.zzm.zzd;

final class zzy extends zzd<zzaa> {
    private /* synthetic */ PlaceFilter zzbkp;

    zzy(zzx zzx, Api api, GoogleApiClient googleApiClient, PlaceFilter placeFilter) {
        this.zzbkp = placeFilter;
        super(api, googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzaa) zzb).zza(new zzm((zzd) this), this.zzbkp);
    }
}
