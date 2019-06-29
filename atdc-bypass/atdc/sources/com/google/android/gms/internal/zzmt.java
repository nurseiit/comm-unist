package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import android.text.TextUtils;

@zzzn
public final class zzmt {
    @Nullable
    public static zzmr zza(@Nullable zzmq zzmq) {
        if (!zzmq.zzdL()) {
            zzafr.v("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
            return null;
        } else if (zzmq.getContext() == null) {
            throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
        } else if (!TextUtils.isEmpty(zzmq.zzck())) {
            return new zzmr(zzmq.getContext(), zzmq.zzck(), zzmq.zzdM(), zzmq.zzdN());
        } else {
            throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
        }
    }
}
