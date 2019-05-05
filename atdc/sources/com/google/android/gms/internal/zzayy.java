package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;

final class zzayy extends zzazb {
    private /* synthetic */ zzayw zzayZ;
    private /* synthetic */ String zztC;

    zzayy(zzayw zzayw, GoogleApiClient googleApiClient, String str) {
        this.zzayZ = zzayw;
        this.zztC = str;
        super(zzayw, googleApiClient);
    }

    public final void zza(zzazf zzazf) throws RemoteException {
        zzazf.zza(new zzazc(this, zzazf), this.zzayZ.zzayY, this.zztC);
    }
}
