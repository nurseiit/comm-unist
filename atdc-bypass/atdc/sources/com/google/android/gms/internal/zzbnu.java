package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;

final class zzbnu extends zzbmg {
    private /* synthetic */ zzbnn zzaOD;

    zzbnu(zzbnn zzbnn, GoogleApiClient googleApiClient) {
        this.zzaOD = zzbnn;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbom) ((zzbmh) zzb).zzrf()).zza(new zzbqv(this.zzaOD.zzaLV), new zzbqq(this));
    }
}
