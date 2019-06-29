package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.internal.zzbaz;

final class zzf extends zzm {
    private /* synthetic */ String val$id;

    zzf(zza zza, String str, GoogleApiClient googleApiClient, String str2) {
        this.val$id = str2;
        super(str, googleApiClient);
    }

    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((GamesClientImpl) zzb).zzb((zzbaz) this, this.val$id);
    }
}
