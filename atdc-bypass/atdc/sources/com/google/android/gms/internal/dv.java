package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;

public final class dv extends dp<dp<?>> {
    public static final dv zzbLr = new dv("BREAK");
    public static final dv zzbLs = new dv("CONTINUE");
    public static final dv zzbLt = new dv("NULL");
    public static final dv zzbLu = new dv("UNDEFINED");
    private final String mName;
    private final boolean zzbLv;
    private final dp<?> zzbLw;

    public dv(dp<?> dpVar) {
        zzbo.zzu(dpVar);
        this.mName = "RETURN";
        this.zzbLv = true;
        this.zzbLw = dpVar;
    }

    private dv(String str) {
        this.mName = str;
        this.zzbLv = false;
        this.zzbLw = null;
    }

    public final String toString() {
        return this.mName;
    }

    public final /* synthetic */ Object zzDl() {
        return this.zzbLw;
    }

    public final dp zzDq() {
        return this.zzbLw;
    }

    public final boolean zzDr() {
        return this.zzbLv;
    }
}
