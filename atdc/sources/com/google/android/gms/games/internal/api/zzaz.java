package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.internal.zzbaz;

final class zzaz extends zzbf {
    private /* synthetic */ String zzaxg;
    private /* synthetic */ boolean zzbaP;

    zzaz(zzax zzax, GoogleApiClient googleApiClient, String str, boolean z) {
        this.zzaxg = str;
        this.zzbaP = z;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((GamesClientImpl) zzb).zza((zzbaz) this, this.zzaxg, this.zzbaP);
    }
}
