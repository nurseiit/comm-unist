package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.nearby.connection.Payload;

final class zzcmf extends zzcmj {
    private /* synthetic */ Payload zzbxa;
    private /* synthetic */ String zzbxb;

    zzcmf(zzclm zzclm, GoogleApiClient googleApiClient, String str, Payload payload) {
        this.zzbxb = str;
        this.zzbxa = payload;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzckm) zzb).zza(this, new String[]{this.zzbxb}, this.zzbxa, false);
    }
}
