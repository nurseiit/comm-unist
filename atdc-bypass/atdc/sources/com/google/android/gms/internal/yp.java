package com.google.android.gms.internal;

public final class yp {
    private static final boolean zzcjs = zzJC();

    private static boolean zzJC() {
        try {
            Class.forName("android.app.Activity");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static boolean zzJD() {
        return zzcjs;
    }
}
