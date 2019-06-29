package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.fitness.request.zzbk;

final class zzbxp extends zzbus {
    private /* synthetic */ String zzaVA;

    zzbxp(zzbxk zzbxk, GoogleApiClient googleApiClient, String str) {
        this.zzaVA = str;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbwh) ((zzbup) zzb).zzrf()).zza(new zzbk(this.zzaVA, new zzbzi(this)));
    }
}
