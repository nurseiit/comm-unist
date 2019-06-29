package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.internal.zzbaz;

final class zzcy extends zzdh {
    private /* synthetic */ String zzbbx;

    zzcy(zzcu zzcu, GoogleApiClient googleApiClient, String str) {
        this.zzbbx = str;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((GamesClientImpl) zzb).zzd((zzbaz) this, this.zzbbx);
    }
}
