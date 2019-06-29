package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;

final class zzcmc extends zzcmj {
    private /* synthetic */ String val$name;
    private /* synthetic */ String zzbxb;
    private /* synthetic */ zzbdw zzbxk;

    zzcmc(zzclm zzclm, GoogleApiClient googleApiClient, String str, String str2, zzbdw zzbdw) {
        this.val$name = str;
        this.zzbxb = str2;
        this.zzbxk = zzbdw;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzcnd) ((zzckm) zzb).zzrf()).zza(new zzcot(new zzclj(this).asBinder(), null, null, this.val$name, this.zzbxb, null, new zzcko(this.zzbxk).asBinder()));
    }
}
