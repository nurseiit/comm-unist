package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.fitness.request.zzz;

final class zzbxv extends zzbuw {
    zzbxv(zzbxs zzbxs, GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbwj) ((zzbut) zzb).zzrf()).zza(new zzz(new zzbzi(this)));
    }
}
