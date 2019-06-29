package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.ChannelApi.OpenChannelResult;

final class zzad extends zzn<OpenChannelResult> {
    private /* synthetic */ String zzKS;
    private /* synthetic */ String zzbSe;

    zzad(zzac zzac, GoogleApiClient googleApiClient, String str, String str2) {
        this.zzbSe = str;
        this.zzKS = str2;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        zzfw zzfw = (zzfw) zzb;
        ((zzdn) zzfw.zzrf()).zza(new zzfq(this), this.zzbSe, this.zzKS);
    }

    public final /* synthetic */ Result zzb(Status status) {
        return new zzaf(status, null);
    }
}
