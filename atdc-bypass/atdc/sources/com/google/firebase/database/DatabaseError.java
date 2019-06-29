package com.google.firebase.database;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Map;

public class DatabaseError {
    public static final int DATA_STALE = -1;
    public static final int DISCONNECTED = -4;
    public static final int EXPIRED_TOKEN = -6;
    public static final int INVALID_TOKEN = -7;
    public static final int MAX_RETRIES = -8;
    public static final int NETWORK_ERROR = -24;
    public static final int OPERATION_FAILED = -2;
    public static final int OVERRIDDEN_BY_SET = -9;
    public static final int PERMISSION_DENIED = -3;
    public static final int UNAVAILABLE = -10;
    public static final int UNKNOWN_ERROR = -999;
    public static final int USER_CODE_EXCEPTION = -11;
    public static final int WRITE_CANCELED = -25;
    private static final Map<Integer, String> zzbYI;
    private static final Map<String, Integer> zzbYJ;
    private final int code;
    private final String message;
    private final String zzbYK;

    static {
        HashMap hashMap = new HashMap();
        zzbYI = hashMap;
        hashMap.put(Integer.valueOf(-1), "The transaction needs to be run again with current data");
        zzbYI.put(Integer.valueOf(-2), "The server indicated that this operation failed");
        zzbYI.put(Integer.valueOf(-3), "This client does not have permission to perform this operation");
        zzbYI.put(Integer.valueOf(-4), "The operation had to be aborted due to a network disconnect");
        zzbYI.put(Integer.valueOf(-6), "The supplied auth token has expired");
        zzbYI.put(Integer.valueOf(-7), "The supplied auth token was invalid");
        zzbYI.put(Integer.valueOf(-8), "The transaction had too many retries");
        zzbYI.put(Integer.valueOf(-9), "The transaction was overridden by a subsequent set");
        zzbYI.put(Integer.valueOf(-10), "The service is unavailable");
        zzbYI.put(Integer.valueOf(-11), "User code called from the Firebase Database runloop threw an exception:\n");
        zzbYI.put(Integer.valueOf(-24), "The operation could not be performed due to a network error");
        zzbYI.put(Integer.valueOf(-25), "The write was canceled by the user.");
        zzbYI.put(Integer.valueOf(UNKNOWN_ERROR), "An unknown error occurred");
        hashMap = new HashMap();
        zzbYJ = hashMap;
        hashMap.put("datastale", Integer.valueOf(-1));
        zzbYJ.put("failure", Integer.valueOf(-2));
        zzbYJ.put("permission_denied", Integer.valueOf(-3));
        zzbYJ.put("disconnected", Integer.valueOf(-4));
        zzbYJ.put("expired_token", Integer.valueOf(-6));
        zzbYJ.put("invalid_token", Integer.valueOf(-7));
        zzbYJ.put("maxretries", Integer.valueOf(-8));
        zzbYJ.put("overriddenbyset", Integer.valueOf(-9));
        zzbYJ.put("unavailable", Integer.valueOf(-10));
        zzbYJ.put("network_error", Integer.valueOf(-24));
        zzbYJ.put("write_canceled", Integer.valueOf(-25));
    }

    private DatabaseError(int i, String str) {
        this(-11, str, null);
    }

    private DatabaseError(int i, String str, String str2) {
        this.code = i;
        this.message = str;
        this.zzbYK = "";
    }

    public static DatabaseError fromException(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        String valueOf = String.valueOf((String) zzbYI.get(Integer.valueOf(-11)));
        String valueOf2 = String.valueOf(stringWriter.toString());
        return new DatabaseError(-11, valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
    }

    public static DatabaseError zzZ(String str, String str2) {
        Object obj = (Integer) zzbYJ.get(str.toLowerCase());
        if (obj == null) {
            obj = Integer.valueOf(UNKNOWN_ERROR);
        }
        if (str2 == null) {
            str2 = (String) zzbYI.get(obj);
        }
        return new DatabaseError(obj.intValue(), str2, null);
    }

    public static DatabaseError zzbU(int i) {
        if (zzbYI.containsKey(Integer.valueOf(-25))) {
            return new DatabaseError(-25, (String) zzbYI.get(Integer.valueOf(-25)), null);
        }
        StringBuilder stringBuilder = new StringBuilder(49);
        stringBuilder.append("Invalid Firebase Database error code: -25");
        throw new IllegalArgumentException(stringBuilder.toString());
    }

    public static DatabaseError zzgA(String str) {
        Object obj = (Integer) zzbYJ.get(str.toLowerCase());
        if (obj == null) {
            obj = Integer.valueOf(UNKNOWN_ERROR);
        }
        return new DatabaseError(obj.intValue(), (String) zzbYI.get(obj), null);
    }

    public int getCode() {
        return this.code;
    }

    public String getDetails() {
        return this.zzbYK;
    }

    public String getMessage() {
        return this.message;
    }

    public DatabaseException toException() {
        String str = "Firebase Database error: ";
        String valueOf = String.valueOf(this.message);
        return new DatabaseException(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
    }

    public String toString() {
        String str = "DatabaseError: ";
        String valueOf = String.valueOf(this.message);
        return valueOf.length() != 0 ? str.concat(valueOf) : new String(str);
    }
}
