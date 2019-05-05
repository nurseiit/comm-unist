package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.safetynet.SafetyNet;

abstract class zzcrv<R extends Result> extends zzbay<R, zzcsn> {
    public zzcrv(GoogleApiClient googleApiClient) {
        super(SafetyNet.API, googleApiClient);
    }

    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((Result) obj);
    }
}
