package com.google.android.gms.internal;

import android.os.Looper;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.zzbo;

public final class zzceb {
    public static Looper zzb(@Nullable Looper looper) {
        return looper != null ? looper : zzwd();
    }

    public static Looper zzwd() {
        zzbo.zza(Looper.myLooper() != null, (Object) "Can't create handler inside thread that has not called Looper.prepare()");
        return Looper.myLooper();
    }
}
