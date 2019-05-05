package com.google.android.gms.common.stats;

import android.os.PowerManager.WakeLock;
import android.os.Process;
import android.text.TextUtils;

public final class zzc {
    public static String zza(WakeLock wakeLock, String str) {
        Object str2;
        String valueOf = String.valueOf(String.valueOf((((long) Process.myPid()) << 32) | ((long) System.identityHashCode(wakeLock))));
        if (TextUtils.isEmpty(str2)) {
            str2 = "";
        }
        str2 = String.valueOf(str2);
        return str2.length() != 0 ? valueOf.concat(str2) : new String(valueOf);
    }
}
