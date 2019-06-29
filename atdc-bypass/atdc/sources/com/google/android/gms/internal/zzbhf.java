package com.google.android.gms.internal;

import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class zzbhf {
    private final long zzaKm;
    private final Map<String, String> zzaKn;
    private final int zzaKo;
    private final List<zzbhi> zzaKp;
    private final int zzaKq;
    private final int zzaKr;

    private zzbhf(zzbhg zzbhg) {
        this.zzaKm = zzbhg.zzaKm;
        this.zzaKn = zzbhg.zzaKn;
        this.zzaKo = zzbhg.zzaKo;
        this.zzaKp = null;
        this.zzaKq = zzbhg.zzaKq;
        this.zzaKr = zzbhg.zzaKr;
    }

    public final long zzsm() {
        return this.zzaKm;
    }

    public final Map<String, String> zzsn() {
        return this.zzaKn == null ? Collections.emptyMap() : this.zzaKn;
    }

    public final int zzso() {
        return this.zzaKo;
    }

    public final int zzsp() {
        return this.zzaKr;
    }

    public final int zzsq() {
        return this.zzaKq;
    }
}
