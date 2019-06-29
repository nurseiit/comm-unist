package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.internal.zzbaz;

final class zzdc extends zzdj {
    private /* synthetic */ String zzbbw;
    private /* synthetic */ String zzbbz;

    zzdc(zzcu zzcu, GoogleApiClient googleApiClient, String str, String str2) {
        this.zzbbw = str;
        this.zzbbz = str2;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((GamesClientImpl) zzb).zza((zzbaz) this, this.zzbbw, this.zzbbz);
    }
}
