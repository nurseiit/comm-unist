package com.google.android.gms.nearby.messages.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzbdw;
import com.google.android.gms.nearby.messages.SubscribeOptions;

final class zzap extends zzav {
    private /* synthetic */ zzbdw zzbhE;
    private /* synthetic */ zzbdw zzbzl;
    private /* synthetic */ SubscribeOptions zzbzn;

    zzap(zzak zzak, GoogleApiClient googleApiClient, zzbdw zzbdw, zzbdw zzbdw2, SubscribeOptions subscribeOptions) {
        this.zzbhE = zzbdw;
        this.zzbzl = zzbdw2;
        this.zzbzn = subscribeOptions;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzah) zzb).zza(zzzX(), this.zzbhE, this.zzbzl, this.zzbzn, null);
    }
}
