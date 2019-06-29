package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.nearby.connection.DiscoveryOptions;
import com.google.android.gms.nearby.connection.Strategy;

final class zzcls extends zzcmj {
    private /* synthetic */ long zzbxc;
    private /* synthetic */ String zzbxe;
    private /* synthetic */ zzbdw zzbxf;

    zzcls(zzclm zzclm, GoogleApiClient googleApiClient, String str, long j, zzbdw zzbdw) {
        this.zzbxe = str;
        this.zzbxc = j;
        this.zzbxf = zzbdw;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        zzckm zzckm = (zzckm) zzb;
        String str = this.zzbxe;
        long j = this.zzbxc;
        zzbdw zzbdw = this.zzbxf;
        ((zzcnd) zzckm.zzrf()).zza(new zzcoz(new zzclj(this).asBinder(), null, str, j, new DiscoveryOptions(Strategy.P2P_CLUSTER), new zzckz(zzbdw).asBinder()));
    }
}
