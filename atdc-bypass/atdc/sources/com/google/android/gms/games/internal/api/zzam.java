package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.internal.zzbaz;

final class zzam extends zzat {
    private /* synthetic */ String zzbaW;
    private /* synthetic */ long zzbbc;
    private /* synthetic */ String zzbbd;

    zzam(zzaf zzaf, GoogleApiClient googleApiClient, String str, long j, String str2) {
        this.zzbaW = str;
        this.zzbbc = j;
        this.zzbbd = str2;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((GamesClientImpl) zzb).zza((zzbaz) this, this.zzbaW, this.zzbbc, this.zzbbd);
    }
}
