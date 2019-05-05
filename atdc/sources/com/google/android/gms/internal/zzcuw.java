package com.google.android.gms.internal;

import android.text.TextUtils;
import java.util.Map;

final class zzcuw {
    private final long zzaid;
    private final long zzbEO;
    private final long zzbEP;
    private String zzbEQ;
    private String zzbIi;
    private Map<String, String> zzbIj;
    private String zzbIk;

    zzcuw(long j, long j2, long j3) {
        this.zzbEO = j;
        this.zzaid = j2;
        this.zzbEP = j3;
    }

    /* Access modifiers changed, original: final */
    public final long zzBm() {
        return this.zzbEO;
    }

    /* Access modifiers changed, original: final */
    public final long zzBn() {
        return this.zzbEP;
    }

    /* Access modifiers changed, original: final */
    public final String zzBo() {
        return this.zzbEQ;
    }

    /* Access modifiers changed, original: final */
    public final String zzCo() {
        return this.zzbIi;
    }

    /* Access modifiers changed, original: final */
    public final Map<String, String> zzCp() {
        return this.zzbIj;
    }

    /* Access modifiers changed, original: final */
    public final String zzCq() {
        return this.zzbIk;
    }

    /* Access modifiers changed, original: final */
    public final void zzfD(String str) {
        this.zzbIi = str;
    }

    /* Access modifiers changed, original: final */
    public final void zzfE(String str) {
        this.zzbIk = str;
    }

    /* Access modifiers changed, original: final */
    public final void zzfl(String str) {
        if (str != null && !TextUtils.isEmpty(str.trim())) {
            this.zzbEQ = str;
        }
    }

    /* Access modifiers changed, original: final */
    public final void zzu(Map<String, String> map) {
        this.zzbIj = map;
    }
}
