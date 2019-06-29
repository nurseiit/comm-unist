package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.internal.zzbaz;

final class zzdd extends zzdf {
    private /* synthetic */ String zzbbw;

    zzdd(zzcu zzcu, String str, GoogleApiClient googleApiClient, String str2) {
        this.zzbbw = str2;
        super(str, googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((GamesClientImpl) zzb).zzf((zzbaz) this, this.zzbbw);
    }
}
