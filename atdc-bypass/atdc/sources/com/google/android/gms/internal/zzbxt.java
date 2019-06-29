package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.request.DataTypeCreateRequest;
import com.google.android.gms.fitness.result.DataTypeResult;

final class zzbxt extends zzbuu<DataTypeResult> {
    private /* synthetic */ DataTypeCreateRequest zzaVC;

    zzbxt(zzbxs zzbxs, GoogleApiClient googleApiClient, DataTypeCreateRequest dataTypeCreateRequest) {
        this.zzaVC = dataTypeCreateRequest;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbwj) ((zzbut) zzb).zzrf()).zza(new DataTypeCreateRequest(this.zzaVC, new zzbxw(this, null)));
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        return DataTypeResult.zzC(status);
    }
}
