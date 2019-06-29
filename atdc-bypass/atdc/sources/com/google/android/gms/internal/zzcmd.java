package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;

final class zzcmd extends zzcmj {
    private /* synthetic */ String zzbxb;
    private /* synthetic */ zzbdw zzbxo;

    zzcmd(zzclm zzclm, GoogleApiClient googleApiClient, String str, zzbdw zzbdw) {
        this.zzbxb = str;
        this.zzbxo = zzbdw;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzcnd) ((zzckm) zzb).zzrf()).zza(new zzcki(new zzclj(this).asBinder(), null, this.zzbxb, null, new zzclg(this.zzbxo).asBinder()));
    }
}
