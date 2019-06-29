package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.fitness.request.zzd;

final class zzbxn extends zzbus {
    private /* synthetic */ String zzaVA;

    zzbxn(zzbxk zzbxk, GoogleApiClient googleApiClient, String str) {
        this.zzaVA = str;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbwh) ((zzbup) zzb).zzrf()).zza(new zzd(this.zzaVA, null, new zzbzi(this)));
    }
}
