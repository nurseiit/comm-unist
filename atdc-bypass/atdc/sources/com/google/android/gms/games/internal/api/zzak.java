package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.internal.GamesClientImpl;

final class zzak extends zzar {
    private /* synthetic */ boolean zzbaP;
    private /* synthetic */ String zzbaW;
    private /* synthetic */ int zzbaX;
    private /* synthetic */ int zzbaY;
    private /* synthetic */ int zzbaZ;

    zzak(zzaf zzaf, GoogleApiClient googleApiClient, String str, int i, int i2, int i3, boolean z) {
        this.zzbaW = str;
        this.zzbaX = i;
        this.zzbaY = i2;
        this.zzbaZ = i3;
        this.zzbaP = z;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((GamesClientImpl) zzb).zzb(this, this.zzbaW, this.zzbaX, this.zzbaY, this.zzbaZ, this.zzbaP);
    }
}
