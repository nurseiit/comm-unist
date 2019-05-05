package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.plus.internal.zzh;

final class zzcrb extends zzcrg {
    private /* synthetic */ int zzbAO;
    private /* synthetic */ String zzbAP;

    zzcrb(zzcra zzcra, GoogleApiClient googleApiClient, int i, String str) {
        this.zzbAO = i;
        this.zzbAP = str;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        zza(((zzh) zzb).zza(this, this.zzbAO, this.zzbAP));
    }
}
