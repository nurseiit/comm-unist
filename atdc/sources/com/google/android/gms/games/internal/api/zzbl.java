package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.internal.zzbaz;

final class zzbl extends zzbq {
    private /* synthetic */ boolean zzbaP;
    private /* synthetic */ String[] zzbbi;

    zzbl(zzbh zzbh, GoogleApiClient googleApiClient, boolean z, String[] strArr) {
        this.zzbaP = z;
        this.zzbbi = strArr;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((GamesClientImpl) zzb).zzb((zzbaz) this, this.zzbaP, this.zzbbi);
    }
}
