package com.google.android.gms.location.places.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.places.PlaceReport;
import com.google.android.gms.location.places.zzm;
import com.google.android.gms.location.places.zzm.zzf;

final class zzz extends zzf<zzaa> {
    private /* synthetic */ PlaceReport zzbkq;

    zzz(zzx zzx, Api api, GoogleApiClient googleApiClient, PlaceReport placeReport) {
        this.zzbkq = placeReport;
        super(api, googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzaa) zzb).zza(new zzm((zzf) this), this.zzbkq);
    }
}
