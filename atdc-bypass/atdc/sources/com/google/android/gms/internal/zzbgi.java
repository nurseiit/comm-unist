package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zzc;
import com.google.android.gms.common.util.zzo;
import com.google.android.gms.common.util.zzp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public abstract class zzbgi {
    protected static <O, I> I zza(zzbgj<I, O> zzbgj, Object obj) {
        return zzbgj.zzaIQ != null ? zzbgj.convertBack(obj) : obj;
    }

    private static void zza(StringBuilder stringBuilder, zzbgj zzbgj, Object obj) {
        String zzbgi;
        if (zzbgj.zzaIH == 11) {
            zzbgi = ((zzbgi) zzbgj.zzaIN.cast(obj)).toString();
        } else if (zzbgj.zzaIH == 7) {
            stringBuilder.append("\"");
            stringBuilder.append(zzo.zzcK((String) obj));
            zzbgi = "\"";
        } else {
            stringBuilder.append(obj);
            return;
        }
        stringBuilder.append(zzbgi);
    }

    private static void zza(StringBuilder stringBuilder, zzbgj zzbgj, ArrayList<Object> arrayList) {
        stringBuilder.append("[");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                stringBuilder.append(",");
            }
            Object obj = arrayList.get(i);
            if (obj != null) {
                zza(stringBuilder, zzbgj, obj);
            }
        }
        stringBuilder.append("]");
    }

    public String toString() {
        Map zzrL = zzrL();
        StringBuilder stringBuilder = new StringBuilder(100);
        for (String str : zzrL.keySet()) {
            String str2;
            zzbgj zzbgj = (zzbgj) zzrL.get(str2);
            if (zza(zzbgj)) {
                Object zza = zza(zzbgj, zzb(zzbgj));
                stringBuilder.append(stringBuilder.length() == 0 ? "{" : ",");
                stringBuilder.append("\"");
                stringBuilder.append(str2);
                stringBuilder.append("\":");
                if (zza == null) {
                    str2 = "null";
                } else {
                    switch (zzbgj.zzaIJ) {
                        case 8:
                            stringBuilder.append("\"");
                            str2 = zzc.encode((byte[]) zza);
                            break;
                        case 9:
                            stringBuilder.append("\"");
                            str2 = zzc.zzg((byte[]) zza);
                            break;
                        case 10:
                            zzp.zza(stringBuilder, (HashMap) zza);
                            continue;
                        default:
                            if (!zzbgj.zzaII) {
                                zza(stringBuilder, zzbgj, zza);
                                break;
                            }
                            zza(stringBuilder, zzbgj, (ArrayList) zza);
                            continue;
                    }
                    stringBuilder.append(str2);
                    str2 = "\"";
                }
                stringBuilder.append(str2);
            }
        }
        stringBuilder.append(stringBuilder.length() > 0 ? "}" : "{}");
        return stringBuilder.toString();
    }

    /* Access modifiers changed, original: protected */
    public boolean zza(zzbgj zzbgj) {
        if (zzbgj.zzaIJ != 11) {
            return zzcI(zzbgj.zzaIL);
        }
        String str;
        if (zzbgj.zzaIK) {
            str = zzbgj.zzaIL;
            throw new UnsupportedOperationException("Concrete type arrays not supported");
        }
        str = zzbgj.zzaIL;
        throw new UnsupportedOperationException("Concrete types not supported");
    }

    /* Access modifiers changed, original: protected */
    public Object zzb(zzbgj zzbgj) {
        String str = zzbgj.zzaIL;
        if (zzbgj.zzaIN == null) {
            return zzcH(zzbgj.zzaIL);
        }
        zzcH(zzbgj.zzaIL);
        zzbo.zza(true, "Concrete field shouldn't be value object: %s", zzbgj.zzaIL);
        boolean z = zzbgj.zzaIK;
        try {
            char toUpperCase = Character.toUpperCase(str.charAt(0));
            str = String.valueOf(str.substring(1));
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 4);
            stringBuilder.append("get");
            stringBuilder.append(toUpperCase);
            stringBuilder.append(str);
            return getClass().getMethod(stringBuilder.toString(), new Class[0]).invoke(this, new Object[0]);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public abstract Object zzcH(String str);

    public abstract boolean zzcI(String str);

    public abstract Map<String, zzbgj<?, ?>> zzrL();
}
