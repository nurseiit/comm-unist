package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.internal.zzbaz;

final class zzbk extends zzbq {
    private /* synthetic */ boolean zzbaP;
    private /* synthetic */ int zzbaV;
    private /* synthetic */ int[] zzbbh;

    zzbk(zzbh zzbh, GoogleApiClient googleApiClient, int[] iArr, int i, boolean z) {
        this.zzbbh = iArr;
        this.zzbaV = i;
        this.zzbaP = z;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((GamesClientImpl) zzb).zza((zzbaz) this, this.zzbbh, this.zzbaV, this.zzbaP);
    }
}
