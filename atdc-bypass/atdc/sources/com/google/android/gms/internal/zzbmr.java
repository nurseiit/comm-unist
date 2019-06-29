package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;

final class zzbmr extends zzbmg {
    private /* synthetic */ zzbmn zzaOj;

    zzbmr(zzbmn zzbmn, GoogleApiClient googleApiClient) {
        this.zzaOj = zzbmn;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbom) ((zzbmh) zzb).zzrf()).zza(new zzbky(this.zzaOj.zzaOg.getRequestId(), false), new zzbqq(this));
    }
}
