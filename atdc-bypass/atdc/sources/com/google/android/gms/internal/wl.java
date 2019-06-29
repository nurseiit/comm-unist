package com.google.android.gms.internal;

import java.io.PrintWriter;
import java.io.StringWriter;

public final class wl {
    private final String prefix;
    private final wm zzcaD;
    private final String zzchG;

    public wl(wm wmVar, String str) {
        this(wmVar, str, null);
    }

    public wl(wm wmVar, String str, String str2) {
        this.zzcaD = wmVar;
        this.zzchG = str;
        this.prefix = str2;
    }

    private static String zzg(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    private final String zzh(String str, Object... objArr) {
        if (objArr.length > 0) {
            str = String.format(str, objArr);
        }
        if (this.prefix == null) {
            return str;
        }
        String str2 = this.prefix;
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(str2).length() + 3) + String.valueOf(str).length());
        stringBuilder.append(str2);
        stringBuilder.append(" - ");
        stringBuilder.append(str);
        return stringBuilder.toString();
    }

    public final void info(String str) {
        this.zzcaD.zzb(wn.INFO, this.zzchG, zzh(str, new Object[0]), System.currentTimeMillis());
    }

    public final boolean zzIH() {
        return this.zzcaD.zzGQ().ordinal() <= wn.DEBUG.ordinal();
    }

    public final void zzb(String str, Throwable th, Object... objArr) {
        if (zzIH()) {
            str = zzh(str, objArr);
            if (th != null) {
                String valueOf = String.valueOf(zzg(th));
                StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 1) + String.valueOf(valueOf).length());
                stringBuilder.append(str);
                stringBuilder.append("\n");
                stringBuilder.append(valueOf);
                str = stringBuilder.toString();
            }
            this.zzcaD.zzb(wn.DEBUG, this.zzchG, str, System.currentTimeMillis());
        }
    }

    public final void zzd(String str, Throwable th) {
        str = String.valueOf(zzh(str, new Object[0]));
        String valueOf = String.valueOf(zzg(th));
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 1) + String.valueOf(valueOf).length());
        stringBuilder.append(str);
        stringBuilder.append("\n");
        stringBuilder.append(valueOf);
        this.zzcaD.zzb(wn.ERROR, this.zzchG, stringBuilder.toString(), System.currentTimeMillis());
    }

    public final void zze(String str, Throwable th) {
        this.zzcaD.zzb(wn.WARN, this.zzchG, zzh(str, new Object[0]), System.currentTimeMillis());
    }
}
