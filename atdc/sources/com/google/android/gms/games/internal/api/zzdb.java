package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.internal.zzbaz;

final class zzdb extends zzdj {
    private /* synthetic */ String zzbbw;

    zzdb(zzcu zzcu, GoogleApiClient googleApiClient, String str) {
        this.zzbbw = str;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((GamesClientImpl) zzb).zze((zzbaz) this, this.zzbbw);
    }
}
