package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;

public abstract class zzj<T extends zzj> {
    private static String zza(Object obj, int i) {
        if (i > 10) {
            return "ERROR: Recursive toString calls";
        }
        if (obj == null) {
            return "";
        }
        if (obj instanceof String) {
            return TextUtils.isEmpty((String) obj) ? "" : obj.toString();
        } else {
            if (obj instanceof Integer) {
                return ((Integer) obj).intValue() == 0 ? "" : obj.toString();
            } else {
                if (obj instanceof Long) {
                    return ((Long) obj).longValue() == 0 ? "" : obj.toString();
                } else {
                    if (obj instanceof Double) {
                        return ((Double) obj).doubleValue() == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE ? "" : obj.toString();
                    } else {
                        if (obj instanceof Boolean) {
                            return !((Boolean) obj).booleanValue() ? "" : obj.toString();
                        } else {
                            StringBuffer stringBuffer;
                            if (obj instanceof List) {
                                stringBuffer = new StringBuffer();
                                if (i > 0) {
                                    stringBuffer.append("[");
                                }
                                List list = (List) obj;
                                int length = stringBuffer.length();
                                for (Object next : list) {
                                    if (stringBuffer.length() > length) {
                                        stringBuffer.append(", ");
                                    }
                                    stringBuffer.append(zza(next, i + 1));
                                }
                                if (i > 0) {
                                    stringBuffer.append("]");
                                }
                                return stringBuffer.toString();
                            } else if (!(obj instanceof Map)) {
                                return obj.toString();
                            } else {
                                stringBuffer = new StringBuffer();
                                Object obj2 = null;
                                int i2 = 0;
                                for (Entry entry : new TreeMap((Map) obj).entrySet()) {
                                    String zza = zza(entry.getValue(), i + 1);
                                    if (!TextUtils.isEmpty(zza)) {
                                        if (i > 0 && obj2 == null) {
                                            stringBuffer.append("{");
                                            i2 = stringBuffer.length();
                                            obj2 = 1;
                                        }
                                        if (stringBuffer.length() > i2) {
                                            stringBuffer.append(", ");
                                        }
                                        stringBuffer.append((String) entry.getKey());
                                        stringBuffer.append('=');
                                        stringBuffer.append(zza);
                                    }
                                }
                                if (obj2 != null) {
                                    stringBuffer.append("}");
                                }
                                return stringBuffer.toString();
                            }
                        }
                    }
                }
            }
        }
    }

    public static String zzh(Object obj) {
        return zza(obj, 0);
    }

    public static String zzk(Map map) {
        return zza(map, 1);
    }

    public abstract void zzb(T t);
}
