package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;

public final class zzaph {
    private static final String[] zzajo;
    private static final Map<String, Integer> zzajp = new HashMap(zzajo.length);

    static {
        r0 = new String[10];
        int i = 0;
        r0[0] = "text1";
        r0[1] = "text2";
        r0[2] = "icon";
        r0[3] = "intent_action";
        r0[4] = "intent_data";
        r0[5] = "intent_data_id";
        r0[6] = "intent_extra_data";
        r0[7] = "suggest_large_icon";
        r0[8] = "intent_activity";
        r0[9] = "thing_proto";
        zzajo = r0;
        while (i < zzajo.length) {
            zzajp.put(zzajo[i], Integer.valueOf(i));
            i++;
        }
    }

    public static String zzQ(int i) {
        return (i < 0 || i >= zzajo.length) ? null : zzajo[i];
    }

    public static int zzbH(String str) {
        Integer num = (Integer) zzajp.get(str);
        if (num != null) {
            return num.intValue();
        }
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 44);
        stringBuilder.append("[");
        stringBuilder.append(str);
        stringBuilder.append("] is not a valid global search section name");
        throw new IllegalArgumentException(stringBuilder.toString());
    }

    public static int zzmk() {
        return zzajo.length;
    }
}
