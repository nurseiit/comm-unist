package com.google.android.gms.nearby.messages.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzbdw;
import com.google.android.gms.internal.zzcpq;

final class zzas extends zzav {
    private /* synthetic */ PendingIntent zzaVL;

    zzas(zzak zzak, GoogleApiClient googleApiClient, PendingIntent pendingIntent) {
        this.zzaVL = pendingIntent;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        zzah zzah = (zzah) zzb;
        zzbdw zzzX = zzzX();
        ((zzs) zzah.zzrf()).zza(new zzbe(null, new zzcpq(zzzX), this.zzaVL));
    }
}
