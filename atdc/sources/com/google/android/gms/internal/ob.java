package com.google.android.gms.internal;

import java.util.Comparator;

public final class ob<A extends Comparable<A>> implements Comparator<A> {
    private static ob zzcan = new ob();

    private ob() {
    }

    public static <T extends Comparable<T>> ob<T> zze(Class<T> cls) {
        return zzcan;
    }

    public final /* synthetic */ int compare(Object obj, Object obj2) {
        return ((Comparable) obj).compareTo((Comparable) obj2);
    }
}
