package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;

final class zzcce extends zzccm {
    private /* synthetic */ boolean zzbiG;

    zzcce(zzccb zzccb, GoogleApiClient googleApiClient, boolean z) {
        this.zzbiG = z;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzcdj) zzb).zzai(this.zzbiG);
        setResult(Status.zzaBm);
    }
}
