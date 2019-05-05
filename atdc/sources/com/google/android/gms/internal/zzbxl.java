package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.fitness.request.StartBleScanRequest;

final class zzbxl extends zzbus {
    private /* synthetic */ StartBleScanRequest zzaVy;

    zzbxl(zzbxk zzbxk, GoogleApiClient googleApiClient, StartBleScanRequest startBleScanRequest) {
        this.zzaVy = startBleScanRequest;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbwh) ((zzbup) zzb).zzrf()).zza(new StartBleScanRequest(this.zzaVy, new zzbzi(this)));
    }
}
