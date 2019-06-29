package com.google.android.gms.cast.framework;

import java.util.Locale;

public final class CastState {
    public static final int CONNECTED = 4;
    public static final int CONNECTING = 3;
    public static final int NOT_CONNECTED = 2;
    public static final int NO_DEVICES_AVAILABLE = 1;

    private CastState() {
    }

    public static String toString(int i) {
        switch (i) {
            case 1:
                return "NO_DEVICES_AVAILABLE";
            case 2:
                return "NOT_CONNECTED";
            case 3:
                return "CONNECTING";
            case 4:
                return "CONNECTED";
            default:
                return String.format(Locale.ROOT, "UNKNOWN_STATE(%d)", new Object[]{Integer.valueOf(i)});
        }
    }
}
