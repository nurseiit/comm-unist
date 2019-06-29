package com.google.android.gms.internal;

import android.annotation.TargetApi;

@zzzn
@TargetApi(17)
public final class zzaiu {
    private static zzaiu zzaax;
    String zzJP;

    private zzaiu() {
    }

    public static zzaiu zzif() {
        if (zzaax == null) {
            zzaax = new zzaiu();
        }
        return zzaax;
    }
}
