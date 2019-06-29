package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;

abstract class zzbuy<R extends Result> extends zzbay<R, zzbux> {
    public zzbuy(GoogleApiClient googleApiClient) {
        super(zzbux.API, googleApiClient);
    }

    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((Result) obj);
    }
}
