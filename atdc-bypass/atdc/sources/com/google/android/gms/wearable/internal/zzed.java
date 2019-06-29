package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbaz;
import com.google.android.gms.wearable.NodeApi.NodeListener;

final class zzed extends zzn<Status> {
    private /* synthetic */ NodeListener zzbSX;

    zzed(zzdz zzdz, GoogleApiClient googleApiClient, NodeListener nodeListener) {
        this.zzbSX = nodeListener;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzfw) zzb).zza((zzbaz) this, this.zzbSX);
    }

    public final /* synthetic */ Result zzb(Status status) {
        return status;
    }
}
