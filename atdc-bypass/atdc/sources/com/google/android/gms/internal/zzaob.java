package com.google.android.gms.internal;

import android.util.Log;
import com.google.android.gms.analytics.Logger;

@Deprecated
public final class zzaob {
    private static volatile Logger zzaim = new zzanl();

    public static Logger getLogger() {
        return zzaim;
    }

    public static void setLogger(Logger logger) {
        zzaim = logger;
    }

    public static void v(String str) {
        zzaoc zzlM = zzaoc.zzlM();
        if (zzlM != null) {
            zzlM.zzbo(str);
        } else if (zzz(0)) {
            Log.v((String) zzans.zzahg.get(), str);
        }
        Logger logger = zzaim;
        if (logger != null) {
            logger.verbose(str);
        }
    }

    public static void zzaT(String str) {
        zzaoc zzlM = zzaoc.zzlM();
        if (zzlM != null) {
            zzlM.zzbr(str);
        } else if (zzz(2)) {
            Log.w((String) zzans.zzahg.get(), str);
        }
        Logger logger = zzaim;
        if (logger != null) {
            logger.warn(str);
        }
    }

    public static void zzf(String str, Object obj) {
        zzaoc zzlM = zzaoc.zzlM();
        if (zzlM != null) {
            zzlM.zze(str, obj);
        } else if (zzz(3)) {
            String valueOf;
            if (obj != null) {
                valueOf = String.valueOf(obj);
                StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 1) + String.valueOf(valueOf).length());
                stringBuilder.append(str);
                stringBuilder.append(":");
                stringBuilder.append(valueOf);
                valueOf = stringBuilder.toString();
            } else {
                valueOf = str;
            }
            Log.e((String) zzans.zzahg.get(), valueOf);
        }
        Logger logger = zzaim;
        if (logger != null) {
            logger.error(str);
        }
    }

    private static boolean zzz(int i) {
        return zzaim != null && zzaim.getLogLevel() <= i;
    }
}
