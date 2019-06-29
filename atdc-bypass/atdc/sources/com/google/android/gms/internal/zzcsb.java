package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;

final class zzcsb extends zzb {
    private /* synthetic */ byte[] zzbBO;
    private /* synthetic */ String zzbBP;

    zzcsb(GoogleApiClient googleApiClient, byte[] bArr, String str) {
        this.zzbBO = bArr;
        this.zzbBP = str;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzcsn) zzb).zzb(this.zzbBW, this.zzbBO, this.zzbBP);
    }
}
