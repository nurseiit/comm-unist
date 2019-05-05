package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;

final class zzclt extends zzcmj {
    private /* synthetic */ String val$name;
    private /* synthetic */ String zzbxb;
    private /* synthetic */ byte[] zzbxg;
    private /* synthetic */ zzbdw zzbxh;
    private /* synthetic */ zzbdw zzbxi;

    zzclt(zzclm zzclm, GoogleApiClient googleApiClient, String str, String str2, byte[] bArr, zzbdw zzbdw, zzbdw zzbdw2) {
        this.val$name = str;
        this.zzbxb = str2;
        this.zzbxg = bArr;
        this.zzbxh = zzbdw;
        this.zzbxi = zzbdw2;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        zzckm zzckm = (zzckm) zzb;
        String str = this.val$name;
        String str2 = this.zzbxb;
        byte[] bArr = this.zzbxg;
        zzbdw zzbdw = this.zzbxh;
        zzbdw zzbdw2 = this.zzbxi;
        ((zzcnd) zzckm.zzrf()).zza(new zzcot(new zzclj(this).asBinder(), new zzclc(zzbdw2).asBinder(), new zzcku(zzbdw).asBinder(), str, str2, bArr, null));
    }
}
