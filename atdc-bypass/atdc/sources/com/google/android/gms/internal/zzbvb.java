package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;

abstract class zzbvb<R extends Result> extends zzbay<R, zzbva> {
    public zzbvb(GoogleApiClient googleApiClient) {
        super(zzbva.API, googleApiClient);
    }

    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((Result) obj);
    }
}
