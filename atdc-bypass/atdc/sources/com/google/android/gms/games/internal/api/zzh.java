package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.internal.zzbaz;

final class zzh extends zzm {
    private /* synthetic */ String val$id;
    private /* synthetic */ int zzbaQ;

    zzh(zza zza, String str, GoogleApiClient googleApiClient, String str2, int i) {
        this.val$id = str2;
        this.zzbaQ = i;
        super(str, googleApiClient);
    }

    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((GamesClientImpl) zzb).zza((zzbaz) this, this.val$id, this.zzbaQ);
    }
}
