package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;

final class zzbni extends zzbnm {
    private /* synthetic */ zzbnh zzaOz;

    zzbni(zzbnh zzbnh, GoogleApiClient googleApiClient) {
        this.zzaOz = zzbnh;
        super(zzbnh, googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbom) ((zzbmh) zzb).zzrf()).zzb(new zzbnk(this.zzaOz, this, null));
    }
}
