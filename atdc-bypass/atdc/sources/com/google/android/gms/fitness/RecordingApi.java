package com.google.android.gms.fitness;

import android.support.annotation.RequiresPermission;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.Subscription;
import com.google.android.gms.fitness.result.ListSubscriptionsResult;

public interface RecordingApi {
    PendingResult<ListSubscriptionsResult> listSubscriptions(GoogleApiClient googleApiClient);

    PendingResult<ListSubscriptionsResult> listSubscriptions(GoogleApiClient googleApiClient, DataType dataType);

    @RequiresPermission(anyOf = {"android.permission.ACCESS_FINE_LOCATION", "android.permission.BODY_SENSORS"}, conditional = true)
    PendingResult<Status> subscribe(GoogleApiClient googleApiClient, DataSource dataSource);

    @RequiresPermission(anyOf = {"android.permission.ACCESS_FINE_LOCATION", "android.permission.BODY_SENSORS"}, conditional = true)
    PendingResult<Status> subscribe(GoogleApiClient googleApiClient, DataType dataType);

    PendingResult<Status> unsubscribe(GoogleApiClient googleApiClient, DataSource dataSource);

    PendingResult<Status> unsubscribe(GoogleApiClient googleApiClient, DataType dataType);

    PendingResult<Status> unsubscribe(GoogleApiClient googleApiClient, Subscription subscription);
}
