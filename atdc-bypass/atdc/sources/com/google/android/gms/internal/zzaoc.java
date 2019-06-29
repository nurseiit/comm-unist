package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.util.Map;
import java.util.Map.Entry;

public class zzaoc extends zzamh {
    private static String zzain = "3";
    private static String zzaio = "01VDIWEA?";
    private static zzaoc zzaip;

    public zzaoc(zzamj zzamj) {
        super(zzamj);
    }

    private static String zzk(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Integer) {
            obj = new Long((long) ((Integer) obj).intValue());
        }
        if (!(obj instanceof Long)) {
            return obj instanceof Boolean ? String.valueOf(obj) : obj instanceof Throwable ? obj.getClass().getCanonicalName() : "-";
        } else {
            Long l = (Long) obj;
            if (Math.abs(l.longValue()) < 100) {
                return String.valueOf(obj);
            }
            String str = String.valueOf(obj).charAt(0) == '-' ? "-" : "";
            String valueOf = String.valueOf(Math.abs(l.longValue()));
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.append(Math.round(Math.pow(10.0d, (double) (valueOf.length() - 1))));
            stringBuilder.append("...");
            stringBuilder.append(str);
            stringBuilder.append(Math.round(Math.pow(10.0d, (double) valueOf.length()) - 1.0d));
            return stringBuilder.toString();
        }
    }

    public static zzaoc zzlM() {
        return zzaip;
    }

    public final void zza(zzanx zzanx, String str) {
        Object zzanx2 = zzanx != null ? zzanx.toString() : "no hit data";
        String str2 = "Discarding hit. ";
        str = String.valueOf(str);
        zzd(str.length() != 0 ? str2.concat(str) : new String(str2), zzanx2);
    }

    public final synchronized void zzb(int i, String str, Object obj, Object obj2, Object obj3) {
        zzbo.zzu(str);
        if (i < 0) {
            i = 0;
        }
        if (i >= zzaio.length()) {
            i = zzaio.length() - 1;
        }
        char c = zzks().zzln() ? 'C' : 'c';
        String str2 = zzain;
        char charAt = zzaio.charAt(i);
        String str3 = zzami.VERSION;
        str = String.valueOf(zzamg.zzc(str, zzk(obj), zzk(obj2), zzk(obj3)));
        StringBuilder stringBuilder = new StringBuilder(((String.valueOf(str2).length() + 3) + String.valueOf(str3).length()) + String.valueOf(str).length());
        stringBuilder.append(str2);
        stringBuilder.append(charAt);
        stringBuilder.append(c);
        stringBuilder.append(str3);
        stringBuilder.append(":");
        stringBuilder.append(str);
        String stringBuilder2 = stringBuilder.toString();
        if (stringBuilder2.length() > 1024) {
            stringBuilder2 = stringBuilder2.substring(0, 1024);
        }
        zzaog zzkH = zzkp().zzkH();
        if (zzkH != null) {
            zzkH.zzlZ().zzbA(stringBuilder2);
        }
    }

    public final void zze(Map<String, String> map, String str) {
        Object stringBuilder;
        if (map != null) {
            StringBuilder stringBuilder2 = new StringBuilder();
            for (Entry entry : map.entrySet()) {
                if (stringBuilder2.length() > 0) {
                    stringBuilder2.append(',');
                }
                stringBuilder2.append((String) entry.getKey());
                stringBuilder2.append('=');
                stringBuilder2.append((String) entry.getValue());
            }
            stringBuilder = stringBuilder2.toString();
        } else {
            stringBuilder = "no hit data";
        }
        String str2 = "Discarding hit. ";
        str = String.valueOf(str);
        zzd(str.length() != 0 ? str2.concat(str) : new String(str2), stringBuilder);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzjD() {
        synchronized (zzaoc.class) {
            zzaip = this;
        }
    }
}
