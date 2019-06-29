package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.nearby.connection.Payload;
import java.util.List;

final class zzclx extends zzcmj {
    private /* synthetic */ List zzbwZ;
    private /* synthetic */ byte[] zzbxj;

    zzclx(zzclm zzclm, GoogleApiClient googleApiClient, List list, byte[] bArr) {
        this.zzbwZ = list;
        this.zzbxj = bArr;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzckm) zzb).zza(this, (String[]) this.zzbwZ.toArray(new String[0]), Payload.fromBytes(this.zzbxj), true);
    }
}
