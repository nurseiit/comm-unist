package com.google.android.gms.internal;

import android.os.Build.VERSION;

final class zzcuv {
    public static int version() {
        try {
            return Integer.parseInt(VERSION.SDK);
        } catch (NumberFormatException unused) {
            String str = "Invalid version number: ";
            String valueOf = String.valueOf(VERSION.SDK);
            zzcvk.e(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            return 0;
        }
    }
}
