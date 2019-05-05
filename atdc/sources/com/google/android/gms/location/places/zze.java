package com.google.android.gms.location.places;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.places.zzm.zzb;

public abstract class zze<A extends com.google.android.gms.common.api.Api.zze> extends zzb<PlacePhotoResult, A> {
    public zze(Api api, GoogleApiClient googleApiClient) {
        super(api, googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        return new PlacePhotoResult(status, null);
    }
}
