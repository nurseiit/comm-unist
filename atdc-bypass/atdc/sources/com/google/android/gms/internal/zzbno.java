package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;

final class zzbno extends zzbny {
    private /* synthetic */ boolean zzaOC = false;
    private /* synthetic */ zzbnn zzaOD;

    zzbno(zzbnn zzbnn, GoogleApiClient googleApiClient, boolean z) {
        this.zzaOD = zzbnn;
        super(zzbnn, googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbom) ((zzbmh) zzb).zzrf()).zza(new zzboi(this.zzaOD.zzaLV, this.zzaOC), new zzbnw(this));
    }
}
