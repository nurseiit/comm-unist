package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.fitness.request.BleScanCallback;
import com.google.android.gms.fitness.request.zzbg;

final class zzbxm extends zzbus {
    private /* synthetic */ BleScanCallback zzaVz;

    zzbxm(zzbxk zzbxk, GoogleApiClient googleApiClient, BleScanCallback bleScanCallback) {
        this.zzaVz = bleScanCallback;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbwh) ((zzbup) zzb).zzrf()).zza(new zzbg(this.zzaVz, new zzbzi(this)));
    }
}
