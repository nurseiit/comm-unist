package com.google.android.gms.internal;

public enum zzang {
    NONE,
    GZIP;

    public static zzang zzby(String str) {
        return "GZIP".equalsIgnoreCase(str) ? GZIP : NONE;
    }
}
