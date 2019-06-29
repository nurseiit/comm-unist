package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.plus.internal.zzh;

final class zzcrf extends zzcrg {
    private /* synthetic */ String[] zzbAR;

    zzcrf(zzcra zzcra, GoogleApiClient googleApiClient, String[] strArr) {
        this.zzbAR = strArr;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzh) zzb).zzc(this, this.zzbAR);
    }
}
