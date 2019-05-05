package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.request.zzj;

final class zzbyb extends zzbvd {
    private /* synthetic */ DataSet zzaVG;
    private /* synthetic */ boolean zzaVH = false;

    zzbyb(zzbya zzbya, GoogleApiClient googleApiClient, DataSet dataSet, boolean z) {
        this.zzaVG = dataSet;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbwn) ((zzbva) zzb).zzrf()).zza(new zzj(this.zzaVG, new zzbzi(this), this.zzaVH));
    }
}
