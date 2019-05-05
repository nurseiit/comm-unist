package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.request.zzr;
import com.google.android.gms.fitness.result.DataTypeResult;

final class zzbxu extends zzbuu<DataTypeResult> {
    private /* synthetic */ String zzaVD;

    zzbxu(zzbxs zzbxs, GoogleApiClient googleApiClient, String str) {
        this.zzaVD = str;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbwj) ((zzbut) zzb).zzrf()).zza(new zzr(this.zzaVD, new zzbxw(this, null)));
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        return DataTypeResult.zzC(status);
    }
}
