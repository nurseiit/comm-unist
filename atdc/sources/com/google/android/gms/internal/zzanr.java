package com.google.android.gms.internal;

import android.os.Build.VERSION;

public final class zzanr {
    public static int version() {
        try {
            return Integer.parseInt(VERSION.SDK);
        } catch (NumberFormatException unused) {
            zzaob.zzf("Invalid version number", VERSION.SDK);
            return 0;
        }
    }
}
