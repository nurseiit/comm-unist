package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.util.zzg;

final class zzcup {
    public static void zza(String str, Throwable th, Context context) {
        zzcvk.zzb(str, th);
        zzcvk.v(zzg.zza(context, th) ? "Crash reported successfully." : "Failed to report crash");
    }

    public static void zzc(String str, Context context) {
        zzcvk.e(str);
        zzcvk.v(zzg.zza(context, new RuntimeException(str)) ? "Crash reported successfully." : "Failed to report crash");
    }

    public static void zzd(String str, Context context) {
        zzcvk.zzaT(str);
        zzcvk.v(zzg.zza(context, new RuntimeException(str)) ? "Crash reported successfully." : "Failed to report crash");
    }
}
