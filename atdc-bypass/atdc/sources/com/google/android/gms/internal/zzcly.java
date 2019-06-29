package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.nearby.connection.AdvertisingOptions;

final class zzcly extends zzcmh {
    private /* synthetic */ String val$name;
    private /* synthetic */ String zzbxe;
    private /* synthetic */ zzbdw zzbxk;
    private /* synthetic */ AdvertisingOptions zzbxl;

    zzcly(zzclm zzclm, GoogleApiClient googleApiClient, String str, String str2, zzbdw zzbdw, AdvertisingOptions advertisingOptions) {
        this.val$name = str;
        this.zzbxe = str2;
        this.zzbxk = zzbdw;
        this.zzbxl = advertisingOptions;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        zzckm zzckm = (zzckm) zzb;
        String str = this.val$name;
        String str2 = this.zzbxe;
        zzbdw zzbdw = this.zzbxk;
        ((zzcnd) zzckm.zzrf()).zza(new zzcox(new zzcll(this).asBinder(), null, str, str2, 0, this.zzbxl, new zzcko(zzbdw).asBinder()));
    }
}
