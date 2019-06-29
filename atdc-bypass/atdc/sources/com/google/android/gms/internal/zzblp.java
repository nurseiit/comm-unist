package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.drive.query.Query;

final class zzblp extends zzbmc {
    private /* synthetic */ Query zzaNK;

    zzblp(zzblo zzblo, GoogleApiClient googleApiClient, Query query) {
        this.zzaNK = query;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbom) ((zzbmh) zzb).zzrf()).zza(new zzbqi(this.zzaNK), new zzbmd(this));
    }
}
