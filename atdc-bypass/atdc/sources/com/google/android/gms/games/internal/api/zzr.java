package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.internal.zzbaz;

final class zzr extends zzt {
    private /* synthetic */ boolean zzbaP;

    zzr(zzp zzp, GoogleApiClient googleApiClient, boolean z) {
        this.zzbaP = z;
        super(googleApiClient, null);
    }

    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((GamesClientImpl) zzb).zzd((zzbaz) this, this.zzbaP);
    }
}
