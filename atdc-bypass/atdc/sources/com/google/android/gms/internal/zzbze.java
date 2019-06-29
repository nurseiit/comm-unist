package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.fitness.request.zzaw;

final class zzbze extends zzbvr {
    private /* synthetic */ PendingIntent zzaVX;
    private /* synthetic */ int zzaWg = 0;

    zzbze(zzbyz zzbyz, GoogleApiClient googleApiClient, PendingIntent pendingIntent, int i) {
        this.zzaVX = pendingIntent;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbwv) ((zzbvo) zzb).zzrf()).zza(new zzaw(this.zzaVX, new zzbzi(this), this.zzaWg));
    }
}
