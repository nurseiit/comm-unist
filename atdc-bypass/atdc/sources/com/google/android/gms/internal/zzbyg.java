package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.request.DataReadRequest;
import com.google.android.gms.fitness.result.DataReadResult;

final class zzbyg extends zzbvb<DataReadResult> {
    private /* synthetic */ DataReadRequest zzaVM;

    zzbyg(zzbya zzbya, GoogleApiClient googleApiClient, DataReadRequest dataReadRequest) {
        this.zzaVM = dataReadRequest;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbwn) ((zzbva) zzb).zzrf()).zza(new DataReadRequest(this.zzaVM, new zzbyj(this, null)));
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        return DataReadResult.zza(status, this.zzaVM.getDataTypes(), this.zzaVM.getDataSources());
    }
}
