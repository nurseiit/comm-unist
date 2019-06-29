package com.google.android.gms.nearby.messages;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.SOURCE)
public @interface NearbyPermissions {
    public static final int BLE = 2;
    public static final int BLUETOOTH = 6;
    public static final int DEFAULT = -1;
    public static final int MICROPHONE = 1;
    public static final int NONE = 0;
}
