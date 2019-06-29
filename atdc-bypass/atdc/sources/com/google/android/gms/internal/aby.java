package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.storage.zzt;
import java.util.concurrent.Executor;

public final class aby {
    private static boolean zzcqg = false;
    private final Handler mHandler;
    private final Executor zzbEo;

    public aby(@Nullable Executor executor) {
        this.zzbEo = executor;
        this.mHandler = this.zzbEo == null ? new Handler(Looper.getMainLooper()) : null;
    }

    public final void zzw(@NonNull Runnable runnable) {
        zzbo.zzu(runnable);
        if (this.mHandler != null) {
            this.mHandler.post(runnable);
        } else if (this.zzbEo != null) {
            this.zzbEo.execute(runnable);
        } else {
            zzt.zzv(runnable);
        }
    }
}
