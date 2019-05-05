package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;

final class zzbmi extends zzbmg {
    private /* synthetic */ zzbkr zzaOa;
    private /* synthetic */ zzboc zzaOb;

    zzbmi(zzbmh zzbmh, GoogleApiClient googleApiClient, zzbkr zzbkr, zzboc zzboc) {
        this.zzaOa = zzbkr;
        this.zzaOb = zzboc;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbom) ((zzbmh) zzb).zzrf()).zza(this.zzaOa, this.zzaOb, null, new zzbqq(this));
    }
}
