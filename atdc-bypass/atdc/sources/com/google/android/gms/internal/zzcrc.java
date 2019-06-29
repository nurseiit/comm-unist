package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.plus.internal.zzh;

final class zzcrc extends zzcrg {
    private /* synthetic */ String zzbAP;

    zzcrc(zzcra zzcra, GoogleApiClient googleApiClient, String str) {
        this.zzbAP = str;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        zza(((zzh) zzb).zza(this, 0, this.zzbAP));
    }
}
