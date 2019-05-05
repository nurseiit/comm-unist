package com.google.android.gms.nearby.messages.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzbdw;
import com.google.android.gms.internal.zzcpq;
import com.google.android.gms.internal.zzcpt;
import com.google.android.gms.nearby.messages.Message;
import com.google.android.gms.nearby.messages.PublishOptions;

final class zzan extends zzav {
    private /* synthetic */ Message zzbzk;
    private /* synthetic */ zzbdw zzbzl;
    private /* synthetic */ PublishOptions zzbzm;

    zzan(zzak zzak, GoogleApiClient googleApiClient, Message message, zzbdw zzbdw, PublishOptions publishOptions) {
        this.zzbzk = message;
        this.zzbzl = zzbdw;
        this.zzbzm = publishOptions;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        zzah zzah = (zzah) zzb;
        zzbdw zzzX = zzzX();
        zzaf zza = zzaf.zza(this.zzbzk);
        zzbdw zzbdw = this.zzbzl;
        ((zzs) zzah.zzrf()).zza(new zzax(zza, this.zzbzm.getStrategy(), new zzcpq(zzzX), zzbdw == null ? null : new zzcpt(zzbdw)));
    }
}
