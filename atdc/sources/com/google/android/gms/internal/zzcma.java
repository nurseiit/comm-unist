package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.nearby.connection.DiscoveryOptions;

final class zzcma extends zzcmj {
    private /* synthetic */ String zzbxe;
    private /* synthetic */ zzbdw zzbxm;
    private /* synthetic */ DiscoveryOptions zzbxn;

    zzcma(zzclm zzclm, GoogleApiClient googleApiClient, String str, zzbdw zzbdw, DiscoveryOptions discoveryOptions) {
        this.zzbxe = str;
        this.zzbxm = zzbdw;
        this.zzbxn = discoveryOptions;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        zzckm zzckm = (zzckm) zzb;
        String str = this.zzbxe;
        zzbdw zzbdw = this.zzbxm;
        ((zzcnd) zzckm.zzrf()).zza(new zzcoz(new zzclj(this).asBinder(), null, str, 0, this.zzbxn, new zzckw(zzbdw).asBinder()));
    }
}
