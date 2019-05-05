package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbaz;
import com.google.android.gms.wearable.DataApi.DataListener;

final class zzbr extends zzn<Status> {
    private /* synthetic */ DataListener zzbSA;

    zzbr(zzbi zzbi, GoogleApiClient googleApiClient, DataListener dataListener) {
        this.zzbSA = dataListener;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzfw) zzb).zza((zzbaz) this, this.zzbSA);
    }

    public final /* synthetic */ Result zzb(Status status) {
        return status;
    }
}
