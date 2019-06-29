package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;

final class zzcme extends zzcmj {
    private /* synthetic */ String zzbxb;

    zzcme(zzclm zzclm, GoogleApiClient googleApiClient, String str) {
        this.zzbxb = str;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzckm) zzb).zzj(this, this.zzbxb);
    }
}
