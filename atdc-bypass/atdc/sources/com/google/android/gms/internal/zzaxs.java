package com.google.android.gms.internal;

import com.google.android.gms.cast.Cast;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

public abstract class zzaxs<R extends Result> extends zzbay<R, zzaxx> {
    public zzaxs(GoogleApiClient googleApiClient) {
        super(Cast.API, googleApiClient);
    }

    public /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((Result) obj);
    }

    public final void zzad(int i) {
        setResult(zzb(new Status(2001)));
    }
}
