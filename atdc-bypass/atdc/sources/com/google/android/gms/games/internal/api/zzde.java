package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.internal.zzbaz;

final class zzde extends zzdn {
    private /* synthetic */ int zzbbB;
    private /* synthetic */ int[] zzbbC;

    zzde(zzcu zzcu, GoogleApiClient googleApiClient, int i, int[] iArr) {
        this.zzbbB = i;
        this.zzbbC = iArr;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((GamesClientImpl) zzb).zza((zzbaz) this, this.zzbbB, this.zzbbC);
    }
}
