package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.fitness.data.Subscription;
import com.google.android.gms.fitness.request.zzbi;

final class zzbyo extends zzbvj {
    private /* synthetic */ Subscription zzaVS;

    zzbyo(zzbyl zzbyl, GoogleApiClient googleApiClient, Subscription subscription) {
        this.zzaVS = subscription;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbwr) ((zzbvg) zzb).zzrf()).zza(new zzbi(this.zzaVS, false, new zzbzi(this)));
    }
}
