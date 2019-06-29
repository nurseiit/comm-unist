package com.google.android.gms.internal;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class zzab {
    public static boolean DEBUG = Log.isLoggable("Volley", 2);
    private static String TAG = "Volley";

    static class zza {
        public static final boolean zzai = zzab.DEBUG;
        private final List<zzac> zzaj = new ArrayList();
        private boolean zzak = false;

        zza() {
        }

        /* Access modifiers changed, original: protected|final */
        public final void finalize() throws Throwable {
            if (!this.zzak) {
                zzc("Request on the loose");
                zzab.zzc("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
            }
        }

        public final synchronized void zza(String str, long j) {
            if (this.zzak) {
                throw new IllegalStateException("Marker added to finished log");
            }
            this.zzaj.add(new zzac(str, j, SystemClock.elapsedRealtime()));
        }

        public final synchronized void zzc(String str) {
            long j;
            this.zzak = true;
            if (this.zzaj.size() == 0) {
                j = 0;
            } else {
                j = ((zzac) this.zzaj.get(this.zzaj.size() - 1)).time - ((zzac) this.zzaj.get(0)).time;
            }
            if (j > 0) {
                long j2 = ((zzac) this.zzaj.get(0)).time;
                zzab.zzb("(%-4d ms) %s", Long.valueOf(j), str);
                for (zzac zzac : this.zzaj) {
                    zzab.zzb("(+%-4d) [%2d] %s", Long.valueOf(zzac.time - j2), Long.valueOf(zzac.zzal), zzac.name);
                    j2 = zzac.time;
                }
            }
        }
    }

    public static void zza(String str, Object... objArr) {
        if (DEBUG) {
            Log.v(TAG, zzd(str, objArr));
        }
    }

    public static void zza(Throwable th, String str, Object... objArr) {
        Log.e(TAG, zzd(str, objArr), th);
    }

    public static void zzb(String str, Object... objArr) {
        Log.d(TAG, zzd(str, objArr));
    }

    public static void zzc(String str, Object... objArr) {
        Log.e(TAG, zzd(str, objArr));
    }

    private static String zzd(String str, Object... objArr) {
        if (objArr != null) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        String str2 = "<unknown>";
        for (int i = 2; i < stackTrace.length; i++) {
            if (!stackTrace[i].getClass().equals(zzab.class)) {
                str2 = stackTrace[i].getClassName();
                str2 = str2.substring(str2.lastIndexOf(46) + 1);
                str2 = str2.substring(str2.lastIndexOf(36) + 1);
                String valueOf = String.valueOf(stackTrace[i].getMethodName());
                StringBuilder stringBuilder = new StringBuilder((String.valueOf(str2).length() + 1) + String.valueOf(valueOf).length());
                stringBuilder.append(str2);
                stringBuilder.append(".");
                stringBuilder.append(valueOf);
                str2 = stringBuilder.toString();
                break;
            }
        }
        return String.format(Locale.US, "[%d] %s: %s", new Object[]{Long.valueOf(Thread.currentThread().getId()), str2, str});
    }
}
