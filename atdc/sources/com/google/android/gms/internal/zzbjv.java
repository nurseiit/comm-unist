package com.google.android.gms.internal;

import com.google.android.gms.awareness.fence.FenceQueryResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

public abstract class zzbjv extends zzbay<FenceQueryResult, zzbka> {
    public zzbjv(GoogleApiClient googleApiClient) {
        super(zzbil.API, googleApiClient);
    }

    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((FenceQueryResult) obj);
    }

    public final /* synthetic */ Result zzb(Status status) {
        return new zzbjw(this, status);
    }
}
