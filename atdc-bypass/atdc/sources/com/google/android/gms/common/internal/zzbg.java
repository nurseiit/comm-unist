package com.google.android.gms.common.internal;

import java.util.ArrayList;
import java.util.List;

public final class zzbg {
    private final List<String> zzaIh;
    private final Object zzaaw;

    private zzbg(Object obj) {
        this.zzaaw = zzbo.zzu(obj);
        this.zzaIh = new ArrayList();
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder(100);
        stringBuilder.append(this.zzaaw.getClass().getSimpleName());
        stringBuilder.append('{');
        int size = this.zzaIh.size();
        for (int i = 0; i < size; i++) {
            stringBuilder.append((String) this.zzaIh.get(i));
            if (i < size - 1) {
                stringBuilder.append(", ");
            }
        }
        stringBuilder.append('}');
        return stringBuilder.toString();
    }

    public final zzbg zzg(String str, Object obj) {
        List list = this.zzaIh;
        str = (String) zzbo.zzu(str);
        String valueOf = String.valueOf(String.valueOf(obj));
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 1) + String.valueOf(valueOf).length());
        stringBuilder.append(str);
        stringBuilder.append("=");
        stringBuilder.append(valueOf);
        list.add(stringBuilder.toString());
        return this;
    }
}
