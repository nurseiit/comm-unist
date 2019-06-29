package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;

public final class abk {
    private boolean zzcnA;
    private long zzcnD;
    private int zzcnJ;
    private long zzcnM;
    private Map<String, abe> zzcnN;

    public abk() {
        this(-1);
    }

    private abk(int i, long j, Map<String, abe> map, boolean z) {
        this(0, -1, null, false, -1);
    }

    private abk(int i, long j, Map<String, abe> map, boolean z, long j2) {
        this.zzcnJ = 0;
        this.zzcnM = j;
        this.zzcnN = new HashMap();
        this.zzcnA = false;
        this.zzcnD = -1;
    }

    private abk(long j) {
        this(0, -1, null, false);
    }

    public final int getLastFetchStatus() {
        return this.zzcnJ;
    }

    public final boolean isDeveloperModeEnabled() {
        return this.zzcnA;
    }

    public final void zzH(Map<String, abe> map) {
        Map map2;
        if (map2 == null) {
            map2 = new HashMap();
        }
        this.zzcnN = map2;
    }

    public final Map<String, abe> zzKG() {
        return this.zzcnN;
    }

    public final long zzKH() {
        return this.zzcnM;
    }

    public final long zzKI() {
        return this.zzcnD;
    }

    public final void zza(String str, abe abe) {
        this.zzcnN.put(str, abe);
    }

    public final void zzaJ(boolean z) {
        this.zzcnA = z;
    }

    public final void zzaL(long j) {
        this.zzcnM = j;
    }

    public final void zzaM(long j) {
        this.zzcnD = j;
    }

    public final void zzce(int i) {
        this.zzcnJ = i;
    }

    public final void zzhG(String str) {
        if (this.zzcnN.get(str) != null) {
            this.zzcnN.remove(str);
        }
    }
}
