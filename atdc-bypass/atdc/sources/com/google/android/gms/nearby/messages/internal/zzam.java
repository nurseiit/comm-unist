package com.google.android.gms.nearby.messages.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzbdw;

final class zzam extends zzav {
    private /* synthetic */ zzbdw zzbzj;

    zzam(zzak zzak, GoogleApiClient googleApiClient, zzbdw zzbdw) {
        this.zzbzj = zzbdw;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzah) zzb).zzc(zzzX(), this.zzbzj);
    }
}
