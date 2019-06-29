package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.drive.Drive;

public abstract class zzbmf<R extends Result> extends zzbay<R, zzbmh> {
    public zzbmf(GoogleApiClient googleApiClient) {
        super(Drive.zzajR, googleApiClient);
    }

    public /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((Result) obj);
    }
}
