package com.google.android.gms.cast;

import com.google.android.gms.cast.CastRemoteDisplay.CastRemoteDisplaySessionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;

public interface CastRemoteDisplayApi {
    PendingResult<CastRemoteDisplaySessionResult> startRemoteDisplay(GoogleApiClient googleApiClient, String str);

    PendingResult<CastRemoteDisplaySessionResult> stopRemoteDisplay(GoogleApiClient googleApiClient);
}
