package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.request.DataSourcesRequest;
import com.google.android.gms.fitness.result.DataSourcesResult;
import java.util.Collections;

final class zzbyt extends zzbvl<DataSourcesResult> {
    private /* synthetic */ DataSourcesRequest zzaVU;

    zzbyt(zzbys zzbys, GoogleApiClient googleApiClient, DataSourcesRequest dataSourcesRequest) {
        this.zzaVU = dataSourcesRequest;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbwt) ((zzbvk) zzb).zzrf()).zza(new DataSourcesRequest(this.zzaVU, new zzbuo(this)));
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        return new DataSourcesResult(Collections.emptyList(), status);
    }
}
