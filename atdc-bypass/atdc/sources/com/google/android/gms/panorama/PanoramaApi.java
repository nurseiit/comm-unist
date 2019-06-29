package com.google.android.gms.panorama;

import android.content.Intent;
import android.net.Uri;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;

public interface PanoramaApi {

    public interface PanoramaResult extends Result {
        Intent getViewerIntent();
    }

    PendingResult<PanoramaResult> loadPanoramaInfo(GoogleApiClient googleApiClient, Uri uri);

    PendingResult<PanoramaResult> loadPanoramaInfoAndGrantAccess(GoogleApiClient googleApiClient, Uri uri);
}
