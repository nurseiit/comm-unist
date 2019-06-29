package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;

final class zzcsh extends zze {
    private /* synthetic */ String zzbBU;

    zzcsh(zzcsa zzcsa, GoogleApiClient googleApiClient, String str) {
        this.zzbBU = str;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        zzcsn zzcsn = (zzcsn) zzb;
        ((zzcry) zzcsn.zzrf()).zza(this.zzbBW, this.zzbBU);
    }
}
