package com.google.android.gms.internal;

import java.util.Collections;
import java.util.List;

public final class dm {
    private static final String zzbHi = new String("");
    private static final Integer zzbLg = Integer.valueOf(0);
    private final Object mValue;
    private final int zzamr;
    private final List<Integer> zzbLh;
    private final boolean zzbLi;

    private dm(Integer num, Object obj, List<Integer> list, boolean z) {
        this.zzamr = num.intValue();
        this.mValue = obj;
        this.zzbLh = Collections.unmodifiableList(list);
        this.zzbLi = z;
    }

    /* synthetic */ dm(Integer num, Object obj, List list, boolean z, dn dnVar) {
        this(num, obj, list, z);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof dm) && ((dm) obj).mValue.equals(this.mValue);
    }

    public final int getType() {
        return this.zzamr;
    }

    public final Object getValue() {
        return this.mValue;
    }

    public final int hashCode() {
        return this.mValue.hashCode();
    }

    public final String toString() {
        if (this.mValue != null) {
            return this.mValue.toString();
        }
        zzcvk.e("Fail to convert a null object to string");
        return zzbHi;
    }

    public final List<Integer> zzDi() {
        return this.zzbLh;
    }
}
