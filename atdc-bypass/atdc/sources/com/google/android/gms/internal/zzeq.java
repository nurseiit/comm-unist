package com.google.android.gms.internal;

import android.util.Log;

public final class zzeq {
    private static boolean zzdd = false;

    public static String zza(String str, String str2, Object obj) {
        if (!zzd(6)) {
            return "";
        }
        str = zza(str, str2, obj);
        Log.e("ctxmgr", str);
        return str;
    }

    public static String zza(String str, String str2, Throwable th) {
        if (!zzd(6)) {
            return "";
        }
        str = zza(str, str2, new Object[0]);
        Log.e("ctxmgr", str, th);
        return str;
    }

    private static String zza(String str, String str2, Object... objArr) {
        if (objArr.length == 0) {
            return String.format("[%s]%s", new Object[]{str, str2});
        }
        str = String.valueOf(String.format("[%s]", new Object[]{str}));
        str2 = String.valueOf(String.format(str2, objArr));
        return str2.length() != 0 ? str.concat(str2) : new String(str);
    }

    public static String zzd(String str, String str2) {
        if (!zzd(6)) {
            return "";
        }
        str = zza(str, str2, new Object[0]);
        Log.e("ctxmgr", str);
        return str;
    }

    private static boolean zzd(int i) {
        return Log.isLoggable("ctxmgr", 6);
    }
}
