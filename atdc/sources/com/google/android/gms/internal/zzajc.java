package com.google.android.gms.internal;

import android.util.Log;
import com.google.ads.AdRequest;

@zzzn
public class zzajc {
    public static void e(String str) {
        if (zzz(6)) {
            Log.e(AdRequest.LOGTAG, str);
        }
    }

    public static void zza(String str, Throwable th) {
        if (zzz(3)) {
            Log.d(AdRequest.LOGTAG, str, th);
        }
    }

    public static void zzaC(String str) {
        if (zzz(3)) {
            Log.d(AdRequest.LOGTAG, str);
        }
    }

    public static void zzaS(String str) {
        if (zzz(4)) {
            Log.i(AdRequest.LOGTAG, str);
        }
    }

    public static void zzaT(String str) {
        if (zzz(5)) {
            Log.w(AdRequest.LOGTAG, str);
        }
    }

    public static void zzb(String str, Throwable th) {
        if (zzz(6)) {
            Log.e(AdRequest.LOGTAG, str, th);
        }
    }

    public static void zzc(String str, Throwable th) {
        if (zzz(5)) {
            Log.w(AdRequest.LOGTAG, str, th);
        }
    }

    public static boolean zzz(int i) {
        return i >= 5 || Log.isLoggable(AdRequest.LOGTAG, i);
    }
}
