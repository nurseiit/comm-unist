package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.internal.GamesClientImpl;

final class zzs extends zzv {
    private /* synthetic */ String zzbaT;
    private /* synthetic */ int zzbaU;

    zzs(zzp zzp, GoogleApiClient googleApiClient, String str, int i) {
        this.zzbaT = str;
        this.zzbaU = i;
        super(googleApiClient, null);
    }

    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((GamesClientImpl) zzb).zzn(this.zzbaT, this.zzbaU);
    }
}
