package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import java.util.List;

final class zzbnq extends zzbmg {
    private /* synthetic */ zzbnn zzaOD;
    private /* synthetic */ List zzaOE;

    zzbnq(zzbnn zzbnn, GoogleApiClient googleApiClient, List list) {
        this.zzaOD = zzbnn;
        this.zzaOE = list;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbom) ((zzbmh) zzb).zzrf()).zza(new zzbqo(this.zzaOD.zzaLV, this.zzaOE), new zzbqq(this));
    }
}
