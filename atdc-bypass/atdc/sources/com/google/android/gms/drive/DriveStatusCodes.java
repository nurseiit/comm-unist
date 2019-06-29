package com.google.android.gms.drive;

import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.google.android.gms.common.api.CommonStatusCodes;

public final class DriveStatusCodes extends CommonStatusCodes {
    public static final int DRIVE_CONTENTS_TOO_LARGE = 1508;
    @Deprecated
    public static final int DRIVE_EXTERNAL_STORAGE_REQUIRED = 1500;
    public static final int DRIVE_RATE_LIMIT_EXCEEDED = 1507;
    public static final int DRIVE_RESOURCE_NOT_AVAILABLE = 1502;

    private DriveStatusCodes() {
    }

    public static String getStatusCodeString(int i) {
        if (i == AuthApiStatusCodes.AUTH_TOKEN_ERROR) {
            return "DRIVE_REALTIME_TOKEN_REFRESH_REQUIRED";
        }
        switch (i) {
            case 1501:
                return "DRIVE_RESOURCE_ALREADY_EXISTS";
            case DRIVE_RESOURCE_NOT_AVAILABLE /*1502*/:
                return "DRIVE_RESOURCE_NOT_AVAILABLE";
            case 1503:
                return "DRIVE_RESOURCE_FORBIDDEN";
            case 1504:
                return "DRIVE_REALTIME_CONCURRENT_CREATION";
            case 1505:
                return "DRIVE_REALTIME_INVALID_COMPOUND_OP";
            case 1506:
                return "DRIVE_FULL_SYNC_REQUIRED";
            case DRIVE_RATE_LIMIT_EXCEEDED /*1507*/:
                return "DRIVE_RATE_LIMIT_EXCEEDED";
            case DRIVE_CONTENTS_TOO_LARGE /*1508*/:
                return "DRIVE_CONTENTS_TOO_LARGE";
            case 1509:
                return "DRIVE_RESOURCE_PERMISSION_FORBIDDEN";
            case 1510:
                return "DRIVE_INAPPLICABLE_OPERATION";
            case 1511:
                return "DRIVE_INSUFFICIENT_SCOPES";
            default:
                return CommonStatusCodes.getStatusCodeString(i);
        }
    }
}
