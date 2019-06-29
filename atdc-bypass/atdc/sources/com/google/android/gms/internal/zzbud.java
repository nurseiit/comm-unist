package com.google.android.gms.internal;

import java.util.List;

public final class zzbud {
    public static <T> boolean zza(List<T> list, List<T> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (T contains : list) {
            if (!list2.contains(contains)) {
                return false;
            }
        }
        return true;
    }
}
