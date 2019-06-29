package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

public final class zzbhr implements zzbhh {
    private final Status mStatus;
    private final Map<String, TreeMap<String, byte[]>> zzaKx;
    private final long zzaKy;
    private final List<byte[]> zzaKz;

    public zzbhr(Status status, Map<String, TreeMap<String, byte[]>> map) {
        this(status, (Map) map, -1);
    }

    private zzbhr(Status status, Map<String, TreeMap<String, byte[]>> map, long j) {
        this(status, map, -1, null);
    }

    public zzbhr(Status status, Map<String, TreeMap<String, byte[]>> map, long j, List<byte[]> list) {
        this.mStatus = status;
        this.zzaKx = map;
        this.zzaKy = j;
        this.zzaKz = list;
    }

    public zzbhr(Status status, Map<String, TreeMap<String, byte[]>> map, List<byte[]> list) {
        this(status, map, -1, list);
    }

    public final Status getStatus() {
        return this.mStatus;
    }

    public final long getThrottleEndTimeMillis() {
        return this.zzaKy;
    }

    public final byte[] zza(String str, byte[] bArr, String str2) {
        Object obj = null;
        if (!(this.zzaKx == null || this.zzaKx.get(str2) == null || ((TreeMap) this.zzaKx.get(str2)).get(str) == null)) {
            obj = 1;
        }
        return obj != null ? (byte[]) ((TreeMap) this.zzaKx.get(str2)).get(str) : null;
    }

    public final List<byte[]> zzss() {
        return this.zzaKz;
    }

    public final Map<String, Set<String>> zzst() {
        HashMap hashMap = new HashMap();
        if (this.zzaKx != null) {
            for (String str : this.zzaKx.keySet()) {
                Map map = (Map) this.zzaKx.get(str);
                if (map != null) {
                    hashMap.put(str, map.keySet());
                }
            }
        }
        return hashMap;
    }
}
