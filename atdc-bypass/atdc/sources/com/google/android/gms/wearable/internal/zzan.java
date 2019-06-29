package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.Channel.GetInputStreamResult;

final class zzan extends zzn<GetInputStreamResult> {
    private /* synthetic */ zzak zzbSk;

    zzan(zzak zzak, GoogleApiClient googleApiClient) {
        this.zzbSk = zzak;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        zzfw zzfw = (zzfw) zzb;
        String zza = this.zzbSk.zzakv;
        zzdg zzbd = new zzbd();
        ((zzdn) zzfw.zzrf()).zza(new zzfi(this, zzbd), zzbd, zza);
    }

    public final /* synthetic */ Result zzb(Status status) {
        return new zzas(status, null);
    }
}
