package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.internal.zzbaz;

final class zzcd extends zzcn {
    private /* synthetic */ String zzbbm;
    private /* synthetic */ boolean zzbbn;
    private /* synthetic */ int zzbbo;

    zzcd(zzcb zzcb, GoogleApiClient googleApiClient, String str, boolean z, int i) {
        this.zzbbm = str;
        this.zzbbn = z;
        this.zzbbo = i;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((GamesClientImpl) zzb).zza((zzbaz) this, this.zzbbm, this.zzbbn, this.zzbbo);
    }
}
