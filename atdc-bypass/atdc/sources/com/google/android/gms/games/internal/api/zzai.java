package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.internal.zzbaz;

final class zzai extends zzap {
    private /* synthetic */ String zzbaW;
    private /* synthetic */ int zzbaX;
    private /* synthetic */ int zzbaY;

    zzai(zzaf zzaf, GoogleApiClient googleApiClient, String str, int i, int i2) {
        this.zzbaW = str;
        this.zzbaX = i;
        this.zzbaY = i2;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((GamesClientImpl) zzb).zza((zzbaz) this, null, this.zzbaW, this.zzbaX, this.zzbaY);
    }
}
