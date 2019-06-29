package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.internal.zzbaz;

final class zzbc extends zzbf {
    private /* synthetic */ boolean zzbaP;
    private /* synthetic */ int zzbbe;

    zzbc(zzax zzax, GoogleApiClient googleApiClient, int i, boolean z) {
        this.zzbbe = i;
        this.zzbaP = z;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((GamesClientImpl) zzb).zza((zzbaz) this, "played_with", this.zzbbe, false, this.zzbaP);
    }
}
