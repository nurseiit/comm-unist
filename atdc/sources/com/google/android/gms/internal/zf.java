package com.google.android.gms.internal;

import com.google.firebase.database.DatabaseException;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;
import java.util.regex.Pattern;

public final class zf {
    private static final Pattern zzcjD = Pattern.compile("[\\[\\]\\.#$]");
    private static final Pattern zzcjE = Pattern.compile("[\\[\\]\\.#\\$\\/\\u0000-\\u001F\\u007F]");

    public static void zzO(qr qrVar) throws DatabaseException {
        wp zzHc = qrVar.zzHc();
        Object obj = (zzHc == null || !zzHc.asString().startsWith(".")) ? 1 : null;
        if (obj == null) {
            String str = "Invalid write location: ";
            String valueOf = String.valueOf(qrVar.toString());
            throw new DatabaseException(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        }
    }

    public static void zzam(Object obj) {
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (!map.containsKey(".sv")) {
                for (Entry entry : map.entrySet()) {
                    String str = (String) entry.getKey();
                    Object obj2 = (str == null || str.length() <= 0 || !(str.equals(".value") || str.equals(".priority") || (!str.startsWith(".") && !zzcjE.matcher(str).find()))) ? null : 1;
                    if (obj2 == null) {
                        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 68);
                        stringBuilder.append("Invalid key: ");
                        stringBuilder.append(str);
                        stringBuilder.append(". Keys must not contain '/', '.', '#', '$', '[', or ']'");
                        throw new DatabaseException(stringBuilder.toString());
                    }
                    zzam(entry.getValue());
                }
            }
        } else if (obj instanceof List) {
            for (Object zzam : (List) obj) {
                zzam(zzam);
            }
        } else {
            if ((obj instanceof Double) || (obj instanceof Float)) {
                double doubleValue = ((Double) obj).doubleValue();
                if (Double.isInfinite(doubleValue) || Double.isNaN(doubleValue)) {
                    throw new DatabaseException("Invalid value: Value cannot be NaN, Inf or -Inf.");
                }
            }
        }
    }

    public static Map<qr, xm> zzb(qr qrVar, Map<String, Object> map) throws DatabaseException {
        TreeMap treeMap = new TreeMap();
        for (Entry entry : map.entrySet()) {
            qr qrVar2 = new qr((String) entry.getKey());
            Object value = entry.getValue();
            tn.zza(qrVar.zzh(qrVar2), value);
            String asString = !qrVar2.isEmpty() ? qrVar2.zzHf().asString() : "";
            if (asString.equals(".sv") || asString.equals(".value")) {
                String valueOf = String.valueOf(qrVar2);
                StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 40) + String.valueOf(asString).length());
                stringBuilder.append("Path '");
                stringBuilder.append(valueOf);
                stringBuilder.append("' contains disallowed child name: ");
                stringBuilder.append(asString);
                throw new DatabaseException(stringBuilder.toString());
            }
            Object zzc = asString.equals(".priority") ? xs.zzc(qrVar2, value) : xp.zza(value, xd.zzJb());
            zzam(value);
            treeMap.put(qrVar2, zzc);
        }
        qrVar = null;
        for (qr qrVar3 : treeMap.keySet()) {
            boolean z = qrVar == null || qrVar.compareTo(qrVar3) < 0;
            zd.zzaF(z);
            if (qrVar == null || !qrVar.zzi(qrVar3)) {
                qrVar = qrVar3;
            } else {
                String valueOf2 = String.valueOf(qrVar);
                String valueOf3 = String.valueOf(qrVar3);
                StringBuilder stringBuilder2 = new StringBuilder((String.valueOf(valueOf2).length() + 42) + String.valueOf(valueOf3).length());
                stringBuilder2.append("Path '");
                stringBuilder2.append(valueOf2);
                stringBuilder2.append("' is an ancestor of '");
                stringBuilder2.append(valueOf3);
                stringBuilder2.append("' in an update.");
                throw new DatabaseException(stringBuilder2.toString());
            }
        }
        return treeMap;
    }

    public static void zzhb(String str) throws DatabaseException {
        if ((zzcjD.matcher(str).find() ^ 1) == 0) {
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 101);
            stringBuilder.append("Invalid Firebase Database path: ");
            stringBuilder.append(str);
            stringBuilder.append(". Firebase Database paths must not contain '.', '#', '$', '[', or ']'");
            throw new DatabaseException(stringBuilder.toString());
        }
    }

    public static void zzhc(String str) throws DatabaseException {
        int i;
        if (str.startsWith(".info")) {
            i = 5;
        } else if (str.startsWith("/.info")) {
            i = 6;
        } else {
            zzhb(str);
            return;
        }
        zzhb(str.substring(i));
    }

    public static void zzhd(String str) throws DatabaseException {
        if (str != null) {
            Object obj = (str.equals(".info") || !zzcjE.matcher(str).find()) ? 1 : null;
            if (obj == null) {
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 68);
                stringBuilder.append("Invalid key: ");
                stringBuilder.append(str);
                stringBuilder.append(". Keys must not contain '/', '.', '#', '$', '[', or ']'");
                throw new DatabaseException(stringBuilder.toString());
            }
        }
    }
}
