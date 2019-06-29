package com.google.android.gms.internal;

public final class zzcai {
    public static String zzbc(int i) {
        switch (i) {
            case 0:
                return "DAILY";
            case 1:
                return "WEEKLY";
            case 2:
                return "ALL_TIME";
            default:
                StringBuilder stringBuilder = new StringBuilder(29);
                stringBuilder.append("Unknown time span ");
                stringBuilder.append(i);
                throw new IllegalArgumentException(stringBuilder.toString());
        }
    }
}
