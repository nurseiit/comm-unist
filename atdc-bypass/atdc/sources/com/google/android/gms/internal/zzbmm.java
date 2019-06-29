package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import java.util.List;

final class zzbmm extends zzbmg {
    private /* synthetic */ List zzaOf;

    zzbmm(zzbmh zzbmh, GoogleApiClient googleApiClient, List list) {
        this.zzaOf = list;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbom) ((zzbmh) zzb).zzrf()).zza(new zzbku(this.zzaOf), new zzbqq(this));
    }
}
