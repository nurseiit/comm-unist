package com.google.android.gms.awareness;

import com.google.android.gms.awareness.fence.FenceQueryRequest;
import com.google.android.gms.awareness.fence.FenceQueryResult;
import com.google.android.gms.awareness.fence.FenceUpdateRequest;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;

public interface FenceApi {
    PendingResult<FenceQueryResult> queryFences(GoogleApiClient googleApiClient, FenceQueryRequest fenceQueryRequest);

    PendingResult<Status> updateFences(GoogleApiClient googleApiClient, FenceUpdateRequest fenceUpdateRequest);
}
