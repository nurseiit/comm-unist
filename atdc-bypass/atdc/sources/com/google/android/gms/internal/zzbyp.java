package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.request.zzbm;

final class zzbyp extends zzbvj {
    private /* synthetic */ DataType zzaVN;

    zzbyp(zzbyl zzbyl, GoogleApiClient googleApiClient, DataType dataType) {
        this.zzaVN = dataType;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbwr) ((zzbvg) zzb).zzrf()).zza(new zzbm(this.zzaVN, null, new zzbzi(this)));
    }
}
