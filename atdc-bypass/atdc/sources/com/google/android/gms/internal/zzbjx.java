package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

public abstract class zzbjx extends zzbay<zzaud, zzbka> {
    public zzbjx(GoogleApiClient googleApiClient) {
        super(zzbil.API, googleApiClient);
    }

    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((zzaud) obj);
    }

    public final /* synthetic */ Result zzb(Status status) {
        return new zzbjy(this, status);
    }
}
