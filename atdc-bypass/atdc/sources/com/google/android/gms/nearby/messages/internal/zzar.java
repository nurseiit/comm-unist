package com.google.android.gms.nearby.messages.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzbdw;

final class zzar extends zzav {
    private /* synthetic */ zzbdw zzbhE;

    zzar(zzak zzak, GoogleApiClient googleApiClient, zzbdw zzbdw) {
        this.zzbhE = zzbdw;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzah) zzb).zza(zzzX(), this.zzbhE);
    }
}
