package com.google.android.gms.internal;

import java.util.List;

@zzzn
final class zzrk {
    private final String zzHD;
    private final int zzJA;
    private final List<zzrh> zzJB;
    private final String zzJt;

    public zzrk(String str, int i, List<zzrh> list, String str2) {
        this.zzJt = str;
        this.zzJA = i;
        this.zzJB = list;
        this.zzHD = str2;
    }

    public final String getBody() {
        return this.zzHD;
    }

    public final int getResponseCode() {
        return this.zzJA;
    }

    public final Iterable<zzrh> zzeD() {
        return this.zzJB;
    }

    public final String zzey() {
        return this.zzJt;
    }
}
