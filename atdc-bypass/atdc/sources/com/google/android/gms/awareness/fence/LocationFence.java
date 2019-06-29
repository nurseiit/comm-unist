package com.google.android.gms.awareness.fence;

import android.support.annotation.RequiresPermission;
import com.google.android.gms.internal.zzbiy;
import com.google.android.gms.internal.zzbjo;

public final class LocationFence {
    private LocationFence() {
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    public static AwarenessFence entering(double d, double d2, double d3) {
        return zzbiy.zza(zzbjo.zza((int) (d * 1.0E7d), (int) (d2 * 1.0E7d), d3));
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    public static AwarenessFence exiting(double d, double d2, double d3) {
        return zzbiy.zza(zzbjo.zzb((int) (d * 1.0E7d), (int) (d2 * 1.0E7d), d3));
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    public static AwarenessFence in(double d, double d2, double d3, long j) {
        return zzbiy.zza(zzbjo.zza((int) (d * 1.0E7d), (int) (d2 * 1.0E7d), d3, j));
    }
}
