package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;

final class zzbmj extends zzbmg {
    private /* synthetic */ zzboc zzaOb;
    private /* synthetic */ zzbqk zzaOc;

    zzbmj(zzbmh zzbmh, GoogleApiClient googleApiClient, zzbqk zzbqk, zzboc zzboc) {
        this.zzaOc = zzbqk;
        this.zzaOb = zzboc;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbom) ((zzbmh) zzb).zzrf()).zza(this.zzaOc, this.zzaOb, null, new zzbqq(this));
    }
}
