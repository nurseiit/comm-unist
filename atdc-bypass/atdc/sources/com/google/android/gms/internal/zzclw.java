package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.nearby.connection.Payload;

final class zzclw extends zzcmj {
    private /* synthetic */ String zzbxb;
    private /* synthetic */ byte[] zzbxj;

    zzclw(zzclm zzclm, GoogleApiClient googleApiClient, String str, byte[] bArr) {
        this.zzbxb = str;
        this.zzbxj = bArr;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzckm) zzb).zza(this, new String[]{this.zzbxb}, Payload.fromBytes(this.zzbxj), true);
    }
}
