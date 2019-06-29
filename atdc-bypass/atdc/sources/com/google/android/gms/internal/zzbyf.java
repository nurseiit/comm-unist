package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.fitness.request.zzv;

final class zzbyf extends zzbvd {
    private /* synthetic */ PendingIntent zzaVL;

    zzbyf(zzbya zzbya, GoogleApiClient googleApiClient, PendingIntent pendingIntent) {
        this.zzaVL = pendingIntent;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbwn) ((zzbva) zzb).zzrf()).zza(new zzv(this.zzaVL, new zzbzi(this)));
    }
}
