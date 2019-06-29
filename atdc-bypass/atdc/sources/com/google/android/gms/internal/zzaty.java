package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;

final class zzaty extends zzbjx {
    private /* synthetic */ int zzaon;

    zzaty(GoogleApiClient googleApiClient, int i) {
        this.zzaon = i;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbka) zzb).zza((zzbaz) this, new zzaub(this.zzaon, null));
    }
}
