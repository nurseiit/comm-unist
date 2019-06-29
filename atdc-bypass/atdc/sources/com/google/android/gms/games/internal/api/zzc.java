package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.internal.GamesClientImpl;

final class zzc extends zzm {
    private /* synthetic */ String val$id;

    zzc(zza zza, String str, GoogleApiClient googleApiClient, String str2) {
        this.val$id = str2;
        super(str, googleApiClient);
    }

    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((GamesClientImpl) zzb).zza(null, this.val$id);
    }
}
