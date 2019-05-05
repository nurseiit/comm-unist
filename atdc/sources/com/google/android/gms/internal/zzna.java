package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;

@zzzn
public final class zzna {
    private final Map<String, zzmz> zzGY = new HashMap();
    @Nullable
    private final zznb zzsK;

    public zzna(@Nullable zznb zznb) {
        this.zzsK = zznb;
    }

    public final void zza(String str, zzmz zzmz) {
        this.zzGY.put(str, zzmz);
    }

    public final void zza(String str, String str2, long j) {
        zznb zznb = this.zzsK;
        zzmz zzmz = (zzmz) this.zzGY.get(str2);
        String[] strArr = new String[]{str};
        if (!(zznb == null || zzmz == null)) {
            zznb.zza(zzmz, j, strArr);
        }
        Map map = this.zzGY;
        zznb = this.zzsK;
        map.put(str, zznb == null ? null : zznb.zzc(j));
    }

    @Nullable
    public final zznb zzdR() {
        return this.zzsK;
    }
}
