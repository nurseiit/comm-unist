package com.google.android.gms.location.places.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.places.zzd;
import com.google.android.gms.location.places.zzf;

final class zzj extends zzf<zzm> {
    private /* synthetic */ String zzbkk;

    zzj(zzh zzh, Api api, GoogleApiClient googleApiClient, String str) {
        this.zzbkk = str;
        super(api, googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzm) zzb).zza(new zzd((zzf) this), this.zzbkk);
    }
}
