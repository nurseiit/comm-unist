package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;

abstract class zzbvp<R extends Result> extends zzbay<R, zzbvo> {
    public zzbvp(GoogleApiClient googleApiClient) {
        super(zzbvo.API, googleApiClient);
    }

    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((Result) obj);
    }
}
