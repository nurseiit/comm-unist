package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.ConfigApi;
import com.google.android.gms.fitness.request.DataTypeCreateRequest;
import com.google.android.gms.fitness.result.DataTypeResult;

public final class zzbxs implements ConfigApi {
    public final PendingResult<DataTypeResult> createCustomDataType(GoogleApiClient googleApiClient, DataTypeCreateRequest dataTypeCreateRequest) {
        return googleApiClient.zze(new zzbxt(this, googleApiClient, dataTypeCreateRequest));
    }

    public final PendingResult<Status> disableFit(GoogleApiClient googleApiClient) {
        return googleApiClient.zze(new zzbxv(this, googleApiClient));
    }

    public final PendingResult<DataTypeResult> readDataType(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.zzd(new zzbxu(this, googleApiClient, str));
    }
}
