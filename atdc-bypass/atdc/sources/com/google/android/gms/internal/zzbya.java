package com.google.android.gms.internal;

import android.app.PendingIntent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.fitness.HistoryApi;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.request.DataDeleteRequest;
import com.google.android.gms.fitness.request.DataReadRequest;
import com.google.android.gms.fitness.request.DataUpdateListenerRegistrationRequest;
import com.google.android.gms.fitness.request.DataUpdateRequest;
import com.google.android.gms.fitness.result.DailyTotalResult;
import com.google.android.gms.fitness.result.DataReadResult;

public final class zzbya implements HistoryApi {
    private final PendingResult<DailyTotalResult> zza(GoogleApiClient googleApiClient, DataType dataType, boolean z) {
        return googleApiClient.zzd(new zzbyh(this, googleApiClient, dataType, z));
    }

    public final PendingResult<Status> deleteData(GoogleApiClient googleApiClient, DataDeleteRequest dataDeleteRequest) {
        return googleApiClient.zzd(new zzbyc(this, googleApiClient, dataDeleteRequest));
    }

    public final PendingResult<Status> insertData(GoogleApiClient googleApiClient, DataSet dataSet) {
        zzbo.zzb((Object) dataSet, (Object) "Must set the data set");
        zzbo.zza(dataSet.getDataPoints().isEmpty() ^ 1, (Object) "Cannot use an empty data set");
        zzbo.zzb(dataSet.getDataSource().zztM(), (Object) "Must set the app package name for the data source");
        return googleApiClient.zzd(new zzbyb(this, googleApiClient, dataSet, false));
    }

    public final PendingResult<DailyTotalResult> readDailyTotal(GoogleApiClient googleApiClient, DataType dataType) {
        return zza(googleApiClient, dataType, false);
    }

    public final PendingResult<DailyTotalResult> readDailyTotalFromLocalDevice(GoogleApiClient googleApiClient, DataType dataType) {
        return zza(googleApiClient, dataType, true);
    }

    public final PendingResult<DataReadResult> readData(GoogleApiClient googleApiClient, DataReadRequest dataReadRequest) {
        return googleApiClient.zzd(new zzbyg(this, googleApiClient, dataReadRequest));
    }

    public final PendingResult<Status> registerDataUpdateListener(GoogleApiClient googleApiClient, DataUpdateListenerRegistrationRequest dataUpdateListenerRegistrationRequest) {
        return googleApiClient.zzd(new zzbye(this, googleApiClient, dataUpdateListenerRegistrationRequest));
    }

    public final PendingResult<Status> unregisterDataUpdateListener(GoogleApiClient googleApiClient, PendingIntent pendingIntent) {
        return googleApiClient.zze(new zzbyf(this, googleApiClient, pendingIntent));
    }

    public final PendingResult<Status> updateData(GoogleApiClient googleApiClient, DataUpdateRequest dataUpdateRequest) {
        zzbo.zzb(dataUpdateRequest.getDataSet(), (Object) "Must set the data set");
        zzbo.zza(dataUpdateRequest.zzmc(), (Object) "Must set a non-zero value for startTimeMillis/startTime");
        zzbo.zza(dataUpdateRequest.zztU(), (Object) "Must set a non-zero value for endTimeMillis/endTime");
        return googleApiClient.zzd(new zzbyd(this, googleApiClient, dataUpdateRequest));
    }
}
