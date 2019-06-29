package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;

abstract class zzbvl<R extends Result> extends zzbay<R, zzbvk> {
    public zzbvl(GoogleApiClient googleApiClient) {
        super(zzbvk.API, googleApiClient);
    }

    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((Result) obj);
    }
}
