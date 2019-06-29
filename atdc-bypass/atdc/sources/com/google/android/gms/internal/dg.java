package com.google.android.gms.internal;

import java.util.Collections;
import java.util.List;

public final class dg {
    private final List<dd> zzbLb;
    private final List<dd> zzbLc;
    private final List<dd> zzbLd;
    private final List<dd> zzbLe;

    private dg(List<dd> list, List<dd> list2, List<dd> list3, List<dd> list4) {
        this.zzbLb = Collections.unmodifiableList(list);
        this.zzbLc = Collections.unmodifiableList(list2);
        this.zzbLd = Collections.unmodifiableList(list3);
        this.zzbLe = Collections.unmodifiableList(list4);
    }

    /* synthetic */ dg(List list, List list2, List list3, List list4, dh dhVar) {
        this(list, list2, list3, list4);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzbLb);
        String valueOf2 = String.valueOf(this.zzbLc);
        String valueOf3 = String.valueOf(this.zzbLd);
        String valueOf4 = String.valueOf(this.zzbLe);
        StringBuilder stringBuilder = new StringBuilder((((String.valueOf(valueOf).length() + 71) + String.valueOf(valueOf2).length()) + String.valueOf(valueOf3).length()) + String.valueOf(valueOf4).length());
        stringBuilder.append("Positive predicates: ");
        stringBuilder.append(valueOf);
        stringBuilder.append("  Negative predicates: ");
        stringBuilder.append(valueOf2);
        stringBuilder.append("  Add tags: ");
        stringBuilder.append(valueOf3);
        stringBuilder.append("  Remove tags: ");
        stringBuilder.append(valueOf4);
        return stringBuilder.toString();
    }

    public final List<dd> zzDb() {
        return this.zzbLb;
    }

    public final List<dd> zzDc() {
        return this.zzbLc;
    }

    public final List<dd> zzDd() {
        return this.zzbLd;
    }

    public final List<dd> zzDe() {
        return this.zzbLe;
    }
}
