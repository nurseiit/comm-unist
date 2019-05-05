package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.internal.zzbaz;

final class zzah extends zzan {
    private /* synthetic */ boolean zzbaP;
    private /* synthetic */ String zzbaW;

    zzah(zzaf zzaf, GoogleApiClient googleApiClient, String str, boolean z) {
        this.zzbaW = str;
        this.zzbaP = z;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((GamesClientImpl) zzb).zzb((zzbaz) this, this.zzbaW, this.zzbaP);
    }
}
