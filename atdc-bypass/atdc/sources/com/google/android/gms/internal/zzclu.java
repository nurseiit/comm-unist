package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;

final class zzclu extends zzcmj {
    private /* synthetic */ String zzbxb;
    private /* synthetic */ byte[] zzbxg;
    private /* synthetic */ zzbdw zzbxi;

    zzclu(zzclm zzclm, GoogleApiClient googleApiClient, String str, byte[] bArr, zzbdw zzbdw) {
        this.zzbxb = str;
        this.zzbxg = bArr;
        this.zzbxi = zzbdw;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzcnd) ((zzckm) zzb).zzrf()).zza(new zzcki(new zzclj(this).asBinder(), new zzclc(this.zzbxi).asBinder(), this.zzbxb, this.zzbxg, null));
    }
}
