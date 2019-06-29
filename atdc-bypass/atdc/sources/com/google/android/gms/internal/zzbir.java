package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.awareness.fence.FenceQueryRequest;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;

final class zzbir extends zzbjv {
    private /* synthetic */ FenceQueryRequest zzaKR;

    zzbir(zzbip zzbip, GoogleApiClient googleApiClient, FenceQueryRequest fenceQueryRequest) {
        this.zzaKR = fenceQueryRequest;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbka) zzb).zza((zzbaz) this, (zzbja) this.zzaKR);
    }
}
