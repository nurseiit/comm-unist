package com.google.android.gms.location.places;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zze;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.places.zzm.zzb;

public abstract class zzf<A extends zze> extends zzb<PlacePhotoMetadataResult, A> {
    public zzf(Api api, GoogleApiClient googleApiClient) {
        super(api, googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        return new PlacePhotoMetadataResult(status, null);
    }
}
