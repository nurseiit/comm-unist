package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.internal.zzbaz;

final class zzbw extends zzbx {
    private /* synthetic */ int zzbaV;
    private /* synthetic */ int zzbbk;
    private /* synthetic */ int zzbbl;

    zzbw(zzbt zzbt, GoogleApiClient googleApiClient, int i, int i2, int i3) {
        this.zzbbk = i;
        this.zzbbl = i2;
        this.zzbaV = i3;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((GamesClientImpl) zzb).zza((zzbaz) this, this.zzbbk, this.zzbbl, this.zzbaV);
    }
}
