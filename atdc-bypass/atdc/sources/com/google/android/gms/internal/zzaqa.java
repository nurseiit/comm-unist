package com.google.android.gms.internal;

import com.google.android.gms.appinvite.AppInvite;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;

abstract class zzaqa<R extends Result> extends zzbay<R, zzaqh> {
    public zzaqa(GoogleApiClient googleApiClient) {
        super(AppInvite.API, googleApiClient);
    }

    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((Result) obj);
    }
}
