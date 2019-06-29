package com.google.android.gms.tagmanager;

import android.text.TextUtils;

final class zzbx {
    private final long zzaid;
    private final long zzbEO;
    private final long zzbEP;
    private String zzbEQ;

    zzbx(long j, long j2, long j3) {
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
    public final void zzfl(String str) {
        if (str != null && !TextUtils.isEmpty(str.trim())) {
            this.zzbEQ = str;
        }
    }
}
