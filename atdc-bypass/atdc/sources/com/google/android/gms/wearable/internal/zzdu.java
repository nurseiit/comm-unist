package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbaz;
import com.google.android.gms.wearable.MessageApi.MessageListener;

final class zzdu extends zzn<Status> {
    private /* synthetic */ MessageListener zzbSU;

    zzdu(zzds zzds, GoogleApiClient googleApiClient, MessageListener messageListener) {
        this.zzbSU = messageListener;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzfw) zzb).zza((zzbaz) this, this.zzbSU);
    }

    public final /* synthetic */ Result zzb(Status status) {
        return status;
    }
}