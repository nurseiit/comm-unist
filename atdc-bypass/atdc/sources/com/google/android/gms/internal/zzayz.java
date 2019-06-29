package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;

final class zzayz extends zzazb {
    zzayz(zzayw zzayw, GoogleApiClient googleApiClient) {
        super(zzayw, googleApiClient);
    }

    public final void zza(zzazf zzazf) throws RemoteException {
        zzazf.zza(new zzazd(this));
    }
}
