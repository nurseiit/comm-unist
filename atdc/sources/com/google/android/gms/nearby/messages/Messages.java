package com.google.android.gms.nearby.messages;

import android.app.PendingIntent;
import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;

public interface Messages {
    @Deprecated
    PendingResult<Status> getPermissionStatus(GoogleApiClient googleApiClient);

    void handleIntent(Intent intent, MessageListener messageListener);

    PendingResult<Status> publish(GoogleApiClient googleApiClient, Message message);

    PendingResult<Status> publish(GoogleApiClient googleApiClient, Message message, PublishOptions publishOptions);

    PendingResult<Status> registerStatusCallback(GoogleApiClient googleApiClient, StatusCallback statusCallback);

    PendingResult<Status> subscribe(GoogleApiClient googleApiClient, PendingIntent pendingIntent);

    PendingResult<Status> subscribe(GoogleApiClient googleApiClient, PendingIntent pendingIntent, SubscribeOptions subscribeOptions);

    PendingResult<Status> subscribe(GoogleApiClient googleApiClient, MessageListener messageListener);

    PendingResult<Status> subscribe(GoogleApiClient googleApiClient, MessageListener messageListener, SubscribeOptions subscribeOptions);

    PendingResult<Status> unpublish(GoogleApiClient googleApiClient, Message message);

    PendingResult<Status> unregisterStatusCallback(GoogleApiClient googleApiClient, StatusCallback statusCallback);

    PendingResult<Status> unsubscribe(GoogleApiClient googleApiClient, PendingIntent pendingIntent);

    PendingResult<Status> unsubscribe(GoogleApiClient googleApiClient, MessageListener messageListener);
}
