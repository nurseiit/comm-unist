package com.google.android.gms.nearby.messages.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzbdw;
import com.google.android.gms.internal.zzcpq;
import com.google.android.gms.internal.zzcpx;
import com.google.android.gms.nearby.messages.SubscribeOptions;

final class zzaq extends zzav {
    private /* synthetic */ PendingIntent zzaVL;
    private /* synthetic */ zzbdw zzbzl;
    private /* synthetic */ SubscribeOptions zzbzn;

    zzaq(zzak zzak, GoogleApiClient googleApiClient, PendingIntent pendingIntent, zzbdw zzbdw, SubscribeOptions subscribeOptions) {
        this.zzaVL = pendingIntent;
        this.zzbzl = zzbdw;
        this.zzbzn = subscribeOptions;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        zzah zzah = (zzah) zzb;
        zzbdw zzzX = zzzX();
        PendingIntent pendingIntent = this.zzaVL;
        zzbdw zzbdw = this.zzbzl;
        SubscribeOptions subscribeOptions = this.zzbzn;
        ((zzs) zzah.zzrf()).zza(new SubscribeRequest(null, subscribeOptions.getStrategy(), new zzcpq(zzzX), subscribeOptions.getFilter(), pendingIntent, null, zzbdw == null ? null : new zzcpx(zzbdw), subscribeOptions.zzbyA, subscribeOptions.zzbyB));
    }
}
