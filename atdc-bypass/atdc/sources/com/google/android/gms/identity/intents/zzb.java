package com.google.android.gms.identity.intents;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzcbe;

final class zzb extends zza {
    private /* synthetic */ int val$requestCode;
    private /* synthetic */ UserAddressRequest zzbgA;

    zzb(GoogleApiClient googleApiClient, UserAddressRequest userAddressRequest, int i) {
        this.zzbgA = userAddressRequest;
        this.val$requestCode = i;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(com.google.android.gms.common.api.Api.zzb zzb) throws RemoteException {
        ((zzcbe) zzb).zza(this.zzbgA, this.val$requestCode);
        setResult(Status.zzaBm);
    }
}