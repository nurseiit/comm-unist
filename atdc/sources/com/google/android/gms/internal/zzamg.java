package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.zzl;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zze;

public class zzamg {
    private final zzamj zzafJ;

    protected zzamg(zzamj zzamj) {
        zzbo.zzu(zzamj);
        this.zzafJ = zzamj;
    }

    private final void zza(int i, String str, Object obj, Object obj2, Object obj3) {
        zzaoc zzkF = this.zzafJ != null ? this.zzafJ.zzkF() : null;
        String str2;
        if (zzkF != null) {
            str2 = (String) zzans.zzahg.get();
            if (Log.isLoggable(str2, i)) {
                Log.println(i, str2, zzc(str, obj, obj2, obj3));
            }
            if (i >= 5) {
                zzkF.zzb(i, str, obj, obj2, obj3);
            }
            return;
        }
        str2 = (String) zzans.zzahg.get();
        if (Log.isLoggable(str2, i)) {
            Log.println(i, str2, zzc(str, obj, obj2, obj3));
        }
    }

    protected static String zzc(String str, Object obj, Object obj2, Object obj3) {
        CharSequence str2;
        if (str2 == null) {
            str2 = "";
        }
        String zzi = zzi(obj);
        String zzi2 = zzi(obj2);
        String zzi3 = zzi(obj3);
        StringBuilder stringBuilder = new StringBuilder();
        String str3 = "";
        if (!TextUtils.isEmpty(str2)) {
            stringBuilder.append(str2);
            str3 = ": ";
        }
        if (!TextUtils.isEmpty(zzi)) {
            stringBuilder.append(str3);
            stringBuilder.append(zzi);
            str3 = ", ";
        }
        if (!TextUtils.isEmpty(zzi2)) {
            stringBuilder.append(str3);
            stringBuilder.append(zzi2);
            str3 = ", ";
        }
        if (!TextUtils.isEmpty(zzi3)) {
            stringBuilder.append(str3);
            stringBuilder.append(zzi3);
        }
        return stringBuilder.toString();
    }

    public static boolean zzhM() {
        return Log.isLoggable((String) zzans.zzahg.get(), 2);
    }

    private static String zzi(Object obj) {
        return obj == null ? "" : obj instanceof String ? (String) obj : obj instanceof Boolean ? obj == Boolean.TRUE ? "true" : "false" : obj instanceof Throwable ? ((Throwable) obj).toString() : obj.toString();
    }

    /* Access modifiers changed, original: protected|final */
    public final Context getContext() {
        return this.zzafJ.getContext();
    }

    public final void zza(String str, Object obj) {
        zza(2, str, obj, null, null);
    }

    public final void zza(String str, Object obj, Object obj2) {
        zza(2, str, obj, obj2, null);
    }

    public final void zza(String str, Object obj, Object obj2, Object obj3) {
        zza(3, str, obj, obj2, obj3);
    }

    public final void zzb(String str, Object obj) {
        zza(3, str, obj, null, null);
    }

    public final void zzb(String str, Object obj, Object obj2) {
        zza(3, str, obj, obj2, null);
    }

    public final void zzb(String str, Object obj, Object obj2, Object obj3) {
        zza(5, str, obj, obj2, obj3);
    }

    public final void zzbo(String str) {
        zza(2, str, null, null, null);
    }

    public final void zzbp(String str) {
        zza(3, str, null, null, null);
    }

    public final void zzbq(String str) {
        zza(4, str, null, null, null);
    }

    public final void zzbr(String str) {
        zza(5, str, null, null, null);
    }

    public final void zzbs(String str) {
        zza(6, str, null, null, null);
    }

    public final void zzc(String str, Object obj) {
        zza(4, str, obj, null, null);
    }

    public final void zzc(String str, Object obj, Object obj2) {
        zza(5, str, obj, obj2, null);
    }

    public final void zzd(String str, Object obj) {
        zza(5, str, obj, null, null);
    }

    public final void zzd(String str, Object obj, Object obj2) {
        zza(6, str, obj, obj2, null);
    }

    public final void zze(String str, Object obj) {
        zza(6, str, obj, null, null);
    }

    /* Access modifiers changed, original: protected|final */
    public final zzalx zzkA() {
        return this.zzafJ.zzkI();
    }

    /* Access modifiers changed, original: protected|final */
    public final zzamu zzkB() {
        return this.zzafJ.zzkB();
    }

    /* Access modifiers changed, original: protected|final */
    public final zzano zzkC() {
        return this.zzafJ.zzkC();
    }

    public final zzamj zzkp() {
        return this.zzafJ;
    }

    /* Access modifiers changed, original: protected|final */
    public final zze zzkq() {
        return this.zzafJ.zzkq();
    }

    /* Access modifiers changed, original: protected|final */
    public final zzaoc zzkr() {
        return this.zzafJ.zzkr();
    }

    /* Access modifiers changed, original: protected|final */
    public final zzank zzks() {
        return this.zzafJ.zzks();
    }

    /* Access modifiers changed, original: protected|final */
    public final zzl zzkt() {
        return this.zzafJ.zzkt();
    }

    public final GoogleAnalytics zzku() {
        return this.zzafJ.zzkG();
    }

    /* Access modifiers changed, original: protected|final */
    public final zzaly zzkv() {
        return this.zzafJ.zzkv();
    }

    /* Access modifiers changed, original: protected|final */
    public final zzanp zzkw() {
        return this.zzafJ.zzkw();
    }

    /* Access modifiers changed, original: protected|final */
    public final zzaot zzkx() {
        return this.zzafJ.zzkx();
    }

    /* Access modifiers changed, original: protected|final */
    public final zzaog zzky() {
        return this.zzafJ.zzky();
    }

    /* Access modifiers changed, original: protected|final */
    public final zzanb zzkz() {
        return this.zzafJ.zzkJ();
    }
}
