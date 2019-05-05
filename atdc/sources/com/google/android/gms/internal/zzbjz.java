package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

public abstract class zzbjz extends zzbay<Status, zzbka> {
    public zzbjz(GoogleApiClient googleApiClient) {
        super(zzbil.API, googleApiClient);
    }

    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((Status) obj);
    }

    public final /* synthetic */ Result zzb(Status status) {
        return status;
    }
}
