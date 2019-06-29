package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.internal.zzbaz;

final class zzcc extends zzcl {
    private /* synthetic */ boolean zzbaP;

    zzcc(zzcb zzcb, GoogleApiClient googleApiClient, boolean z) {
        this.zzbaP = z;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((GamesClientImpl) zzb).zzf((zzbaz) this, this.zzbaP);
    }
}
