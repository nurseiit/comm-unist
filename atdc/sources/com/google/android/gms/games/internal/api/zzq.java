package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.internal.zzbaz;

final class zzq extends zzt {
    private /* synthetic */ boolean zzbaP;
    private /* synthetic */ String[] zzbaS;

    zzq(zzp zzp, GoogleApiClient googleApiClient, boolean z, String[] strArr) {
        this.zzbaP = z;
        this.zzbaS = strArr;
        super(googleApiClient, null);
    }

    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((GamesClientImpl) zzb).zza((zzbaz) this, this.zzbaP, this.zzbaS);
    }
}
