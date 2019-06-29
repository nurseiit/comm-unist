package com.google.android.gms.internal;

import android.support.annotation.NonNull;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.PendingResult.zza;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.internal.zzbo;
import java.util.concurrent.TimeUnit;

public abstract class zzen<T1 extends Result, T2 extends Result> extends PendingResult<T1> {
    private final PendingResult<T2> zzrJ;

    protected zzen(PendingResult<T2> pendingResult) {
        this.zzrJ = (PendingResult) zzbo.zzu(pendingResult);
    }

    @NonNull
    public T1 await() {
        return zza(this.zzrJ.await());
    }

    @NonNull
    public T1 await(long j, @NonNull TimeUnit timeUnit) {
        return zza(this.zzrJ.await(j, timeUnit));
    }

    public void cancel() {
        this.zzrJ.cancel();
    }

    public boolean isCanceled() {
        return this.zzrJ.isCanceled();
    }

    public void setResultCallback(@NonNull ResultCallback<? super T1> resultCallback) {
        this.zzrJ.setResultCallback(new zzeo(this, resultCallback));
    }

    public void setResultCallback(@NonNull ResultCallback<? super T1> resultCallback, long j, @NonNull TimeUnit timeUnit) {
        this.zzrJ.setResultCallback(new zzep(this, resultCallback), j, timeUnit);
    }

    public abstract T1 zza(T2 t2);

    public final void zza(@NonNull zza zza) {
        this.zzrJ.zza(zza);
    }
}
