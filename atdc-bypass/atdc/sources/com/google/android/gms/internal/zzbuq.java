package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;

abstract class zzbuq<R extends Result> extends zzbay<R, zzbup> {
    public zzbuq(GoogleApiClient googleApiClient) {
        super(zzbup.API, googleApiClient);
    }

    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((Result) obj);
    }
}
