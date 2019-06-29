package com.google.android.gms.internal;

import java.util.List;

public final class zzbuf {
    public static <T> int zza(T t, List<T> list) {
        if (t == null) {
            return -1;
        }
        int indexOf = list.indexOf(t);
        if (indexOf >= 0) {
            return indexOf;
        }
        list.add(t);
        return list.size() - 1;
    }
}
