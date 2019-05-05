package com.google.android.gms.internal;

import java.util.Comparator;

final class zzhh implements Comparator<zzhn> {
    zzhh(zzhg zzhg) {
    }

    public final /* synthetic */ int compare(Object obj, Object obj2) {
        zzhn zzhn = (zzhn) obj;
        zzhn zzhn2 = (zzhn) obj2;
        int i = zzhn.zzzf - zzhn2.zzzf;
        return i != 0 ? i : (int) (zzhn.value - zzhn2.value);
    }
}
