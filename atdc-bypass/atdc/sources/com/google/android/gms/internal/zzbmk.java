package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;

final class zzbmk extends zzbmg {
    private /* synthetic */ zzbkr zzaOa;

    zzbmk(zzbmh zzbmh, GoogleApiClient googleApiClient, zzbkr zzbkr) {
        this.zzaOa = zzbkr;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbom) ((zzbmh) zzb).zzrf()).zza(this.zzaOa, null, null, new zzbqq(this));
    }
}
