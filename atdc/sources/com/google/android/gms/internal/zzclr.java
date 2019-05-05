package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.nearby.connection.AdvertisingOptions;
import com.google.android.gms.nearby.connection.Strategy;

final class zzclr extends zzcmh {
    private /* synthetic */ String val$name;
    private /* synthetic */ long zzbxc;
    private /* synthetic */ zzbdw zzbxd;

    zzclr(zzclm zzclm, GoogleApiClient googleApiClient, String str, long j, zzbdw zzbdw) {
        this.val$name = str;
        this.zzbxc = j;
        this.zzbxd = zzbdw;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        zzckm zzckm = (zzckm) zzb;
        long j = this.zzbxc;
        zzbdw zzbdw = this.zzbxd;
        AdvertisingOptions advertisingOptions = new AdvertisingOptions(Strategy.P2P_CLUSTER);
        ((zzcnd) zzckm.zzrf()).zza(new zzcox(new zzcll(this).asBinder(), new zzcks(zzbdw).asBinder(), this.val$name, "__LEGACY_SERVICE_ID__", j, advertisingOptions, null));
    }
}
