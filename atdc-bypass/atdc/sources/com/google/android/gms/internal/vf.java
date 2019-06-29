package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public final class vf<T> {
    public T value;
    public Map<wp, vf<T>> zzceA = new HashMap();

    /* Access modifiers changed, original: final */
    public final String toString(String str) {
        String valueOf = String.valueOf(this.value);
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 10) + String.valueOf(valueOf).length());
        stringBuilder.append(str);
        stringBuilder.append("<value>: ");
        stringBuilder.append(valueOf);
        stringBuilder.append("\n");
        Object stringBuilder2 = stringBuilder.toString();
        if (this.zzceA.isEmpty()) {
            stringBuilder = new StringBuilder((String.valueOf(stringBuilder2).length() + 7) + String.valueOf(str).length());
            stringBuilder.append(stringBuilder2);
            stringBuilder.append(str);
            stringBuilder.append("<empty>");
            return stringBuilder.toString();
        }
        for (Entry entry : this.zzceA.entrySet()) {
            valueOf = String.valueOf(stringBuilder2);
            String valueOf2 = String.valueOf(entry.getKey());
            String valueOf3 = String.valueOf(((vf) entry.getValue()).toString(String.valueOf(str).concat("\t")));
            StringBuilder stringBuilder3 = new StringBuilder((((String.valueOf(valueOf).length() + 3) + String.valueOf(str).length()) + String.valueOf(valueOf2).length()) + String.valueOf(valueOf3).length());
            stringBuilder3.append(valueOf);
            stringBuilder3.append(str);
            stringBuilder3.append(valueOf2);
            stringBuilder3.append(":\n");
            stringBuilder3.append(valueOf3);
            stringBuilder3.append("\n");
            stringBuilder2 = stringBuilder3.toString();
        }
        return stringBuilder2;
    }
}
