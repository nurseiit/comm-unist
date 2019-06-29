package com.google.android.gms.awareness.fence;

import com.google.android.gms.internal.zzbio;
import com.google.android.gms.internal.zzbiy;

public final class HeadphoneFence {
    private HeadphoneFence() {
    }

    public static AwarenessFence during(int i) {
        return zzbiy.zza(zzbio.zzaJ(i));
    }

    public static AwarenessFence pluggingIn() {
        return zzbiy.zza(zzbio.zzsC());
    }

    public static AwarenessFence unplugging() {
        return zzbiy.zza(zzbio.zzsD());
    }
}
