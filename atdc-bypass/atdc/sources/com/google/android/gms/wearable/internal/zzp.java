package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.CapabilityApi.GetCapabilityResult;

final class zzp extends zzn<GetCapabilityResult> {
    private /* synthetic */ String zzbRV;
    private /* synthetic */ int zzbRW;

    zzp(zzo zzo, GoogleApiClient googleApiClient, String str, int i) {
        this.zzbRV = str;
        this.zzbRW = i;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        zzfw zzfw = (zzfw) zzb;
        ((zzdn) zzfw.zzrf()).zza(new zzfh(this), this.zzbRV, this.zzbRW);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        return new zzy(status, null);
    }
}
