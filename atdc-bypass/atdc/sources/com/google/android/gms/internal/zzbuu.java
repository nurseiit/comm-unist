package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;

abstract class zzbuu<R extends Result> extends zzbay<R, zzbut> {
    public zzbuu(GoogleApiClient googleApiClient) {
        super(zzbut.API, googleApiClient);
    }

    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((Result) obj);
    }
}
