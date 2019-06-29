package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.awareness.fence.FenceUpdateRequest;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;

final class zzbiq extends zzbjz {
    private /* synthetic */ FenceUpdateRequest zzaKQ;

    zzbiq(zzbip zzbip, GoogleApiClient googleApiClient, FenceUpdateRequest fenceUpdateRequest) {
        this.zzaKQ = fenceUpdateRequest;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbka) zzb).zza((zzbaz) this, (zzbjj) this.zzaKQ);
    }
}
