package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;

final class zzbnj extends zzbmg {
    private /* synthetic */ zzbog zzaOA;

    zzbnj(zzbnh zzbnh, GoogleApiClient googleApiClient, zzbog zzbog) {
        this.zzaOA = zzbog;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbom) ((zzbmh) zzb).zzrf()).zza(new zzbqm(this.zzaOA), new zzbqq(this));
    }
}
