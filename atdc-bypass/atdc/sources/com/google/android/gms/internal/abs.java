package com.google.android.gms.internal;

import android.app.Activity;
import android.support.annotation.NonNull;

final class abs {
    @NonNull
    private final Activity mActivity;
    @NonNull
    private final Object zzcpY;
    @NonNull
    private final Runnable zzv;

    public abs(@NonNull Activity activity, @NonNull Runnable runnable, @NonNull Object obj) {
        this.mActivity = activity;
        this.zzv = runnable;
        this.zzcpY = obj;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof abs)) {
            return false;
        }
        abs abs = (abs) obj;
        return abs.zzcpY.equals(this.zzcpY) && abs.zzv == this.zzv && abs.mActivity == this.mActivity;
    }

    @NonNull
    public final Activity getActivity() {
        return this.mActivity;
    }

    public final int hashCode() {
        return this.zzcpY.hashCode();
    }

    @NonNull
    public final Runnable zzEf() {
        return this.zzv;
    }

    @NonNull
    public final Object zzLd() {
        return this.zzcpY;
    }
}
