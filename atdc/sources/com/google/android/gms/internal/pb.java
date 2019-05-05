package com.google.android.gms.internal;

import java.util.List;

final class pb {
    private final Object data;
    private final List<String> zzcbt;
    private final String zzcbv;
    private final pf zzcbw;

    private pb(String str, List<String> list, Object obj, pf pfVar) {
        this.zzcbv = str;
        this.zzcbt = list;
        this.data = obj;
        this.zzcbw = pfVar;
    }

    /* synthetic */ pb(String str, List list, Object obj, pf pfVar, oq oqVar) {
        this(str, list, obj, pfVar);
    }

    public final String getAction() {
        return this.zzcbv;
    }

    public final Object getData() {
        return this.data;
    }

    public final List<String> zzGk() {
        return this.zzcbt;
    }

    public final pf zzGl() {
        return this.zzcbw;
    }
}
