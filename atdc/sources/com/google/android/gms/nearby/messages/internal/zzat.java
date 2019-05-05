package com.google.android.gms.nearby.messages.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzcpq;

final class zzat extends zzav {
    zzat(zzak zzak, GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        zzah zzah = (zzah) zzb;
        ((zzs) zzah.zzrf()).zza(new zzh(new zzcpq(zzzX())));
    }
}
