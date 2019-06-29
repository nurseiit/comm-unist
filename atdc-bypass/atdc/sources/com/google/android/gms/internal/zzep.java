package com.google.android.gms.internal;

import android.support.annotation.NonNull;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;

final class zzep implements ResultCallback<T2> {
    private /* synthetic */ ResultCallback zzrK;
    private /* synthetic */ zzen zzrL;

    zzep(zzen zzen, ResultCallback resultCallback) {
        this.zzrL = zzen;
        this.zzrK = resultCallback;
    }

    public final void onResult(@NonNull T2 t2) {
        this.zzrK.onResult(this.zzrL.zza((Result) t2));
    }
}
