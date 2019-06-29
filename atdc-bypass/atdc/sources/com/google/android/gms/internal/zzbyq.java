package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.request.zzbm;

final class zzbyq extends zzbvj {
    private /* synthetic */ DataSource zzaVT;

    zzbyq(zzbyl zzbyl, GoogleApiClient googleApiClient, DataSource dataSource) {
        this.zzaVT = dataSource;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbwr) ((zzbvg) zzb).zzrf()).zza(new zzbm(null, this.zzaVT, new zzbzi(this)));
    }
}
