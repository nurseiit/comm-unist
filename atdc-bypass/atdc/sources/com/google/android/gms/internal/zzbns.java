package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;

final class zzbns extends zzbmg {
    private /* synthetic */ zzbnn zzaOD;

    zzbns(zzbnn zzbnn, GoogleApiClient googleApiClient) {
        this.zzaOD = zzbnn;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbom) ((zzbmh) zzb).zzrf()).zza(new zzblk(this.zzaOD.zzaLV), new zzbqq(this));
    }
}
