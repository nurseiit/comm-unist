package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.internal.zzbaz;

final class zzb extends zzk {
    private /* synthetic */ boolean zzbaP;

    zzb(zza zza, GoogleApiClient googleApiClient, boolean z) {
        this.zzbaP = z;
        super(googleApiClient, null);
    }

    public final /* synthetic */ void zza(com.google.android.gms.common.api.Api.zzb zzb) throws RemoteException {
        ((GamesClientImpl) zzb).zzc((zzbaz) this, this.zzbaP);
    }
}
