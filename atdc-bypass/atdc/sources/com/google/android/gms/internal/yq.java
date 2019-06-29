package com.google.android.gms.internal;

import java.io.IOException;
import java.util.Map;

public final class yq {
    private final String zzbPJ;
    private final Map<String, Object> zzcjt;

    private yq(String str, Map<String, Object> map) {
        this.zzbPJ = str;
        this.zzcjt = map;
    }

    public static yq zzgU(String str) {
        if (!str.startsWith("gauth|")) {
            return null;
        }
        try {
            Map zzgV = yr.zzgV(str.substring(6));
            return new yq((String) zzgV.get("token"), (Map) zzgV.get("auth"));
        } catch (IOException e) {
            throw new RuntimeException("Failed to parse gauth token", e);
        }
    }

    public final String getToken() {
        return this.zzbPJ;
    }

    public final Map<String, Object> zzJE() {
        return this.zzcjt;
    }
}
