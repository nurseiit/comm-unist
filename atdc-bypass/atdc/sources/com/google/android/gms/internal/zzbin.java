package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;

public final class zzbin {
    private final ach zzaKO;

    private zzbin(ach ach) {
        this.zzaKO = (ach) zzbo.zzu(ach);
    }

    public static zzbin zza(int i, int[] iArr) {
        boolean z = iArr != null && iArr.length > 0;
        zzbo.zzaf(z);
        ach ach = new ach();
        ach.zzcqq = i;
        ach.zzcqr = 3000;
        ach.zzcqs = iArr;
        return new zzbin(ach);
    }

    public final ach zzsB() {
        return this.zzaKO;
    }
}
