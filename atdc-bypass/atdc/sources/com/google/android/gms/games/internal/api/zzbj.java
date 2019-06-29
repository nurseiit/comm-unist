package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.internal.zzbaz;

final class zzbj extends zzbo {
    private /* synthetic */ String zzbbf;
    private /* synthetic */ String zzbbg;

    zzbj(zzbh zzbh, GoogleApiClient googleApiClient, String str, String str2) {
        this.zzbbf = str;
        this.zzbbg = str2;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((GamesClientImpl) zzb).zzb((zzbaz) this, this.zzbbf, this.zzbbg);
    }
}
