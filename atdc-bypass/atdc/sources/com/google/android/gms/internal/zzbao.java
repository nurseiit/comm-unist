package com.google.android.gms.internal;

import android.os.DeadObjectException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

public final class zzbao<A extends zzbay<? extends Result, zzb>> extends zzbam {
    private A zzaBt;

    public zzbao(int i, A a) {
        super(i);
        this.zzaBt = a;
    }

    public final void zza(@NonNull zzbbt zzbbt, boolean z) {
        zzbbt.zza(this.zzaBt, z);
    }

    public final void zza(zzbdd<?> zzbdd) throws DeadObjectException {
        this.zzaBt.zzb(zzbdd.zzpJ());
    }

    public final void zzp(@NonNull Status status) {
        this.zzaBt.zzr(status);
    }
}
