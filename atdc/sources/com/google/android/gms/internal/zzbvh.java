package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;

abstract class zzbvh<R extends Result> extends zzbay<R, zzbvg> {
    public zzbvh(GoogleApiClient googleApiClient) {
        super(zzbvg.API, googleApiClient);
    }

    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((Result) obj);
    }
}
