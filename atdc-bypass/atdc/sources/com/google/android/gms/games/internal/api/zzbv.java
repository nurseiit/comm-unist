package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.internal.zzbaz;

final class zzbv extends zzbz {
    private /* synthetic */ String[] zzbbj;

    zzbv(zzbt zzbt, GoogleApiClient googleApiClient, String[] strArr) {
        this.zzbbj = strArr;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((GamesClientImpl) zzb).zzb((zzbaz) this, this.zzbbj);
    }
}
