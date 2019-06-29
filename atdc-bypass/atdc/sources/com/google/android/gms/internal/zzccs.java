package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.zzaa;

final class zzccs extends zzcct {
    private /* synthetic */ zzaa zzbiL;

    zzccs(zzccq zzccq, GoogleApiClient googleApiClient, zzaa zzaa) {
        this.zzbiL = zzaa;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzcdj) zzb).zza(this.zzbiL, (zzbaz) this);
    }
}
