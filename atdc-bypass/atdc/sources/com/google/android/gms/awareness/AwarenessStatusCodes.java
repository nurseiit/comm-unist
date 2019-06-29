package com.google.android.gms.awareness;

import com.google.android.gms.common.api.CommonStatusCodes;

public class AwarenessStatusCodes extends CommonStatusCodes {
    public static final int ACL_ACCESS_DENIED = 7503;
    public static final int API_NOT_AVAILABLE = 7512;
    public static final int BAD_ACCOUNT = 7504;
    public static final int BLUETOOTH_OFF = 7506;
    public static final int FENCE_NOT_AVAILABLE = 7514;
    public static final int INCONSISTENT_ACCOUNT = 7510;
    public static final int INCONSISTENT_MODULE_ID = 7511;
    public static final int INCONSISTENT_UID = 7513;
    public static final int INTERNAL_API_CLIENT_CONNECTION_FAILED = 7507;
    public static final int MAX_LIMIT_OF_FENCE_REGISTRATIONS_EXCEEDED = 7515;

    private AwarenessStatusCodes() {
    }

    public static String getStatusCodeString(int i) {
        return Integer.toString(i);
    }
}
