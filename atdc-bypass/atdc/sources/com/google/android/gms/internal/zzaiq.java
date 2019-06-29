package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.zzbs;

@zzzn
public final class zzaiq extends zzafp {
    private final String zzD;
    private final zzajd zzaat;

    public zzaiq(Context context, String str, String str2) {
        this(str2, zzbs.zzbz().zzs(context, str));
    }

    public zzaiq(String str, String str2) {
        this.zzaat = new zzajd(str2);
        this.zzD = str;
    }

    public final void onStop() {
    }

    public final void zzbd() {
        this.zzaat.zzaN(this.zzD);
    }
}
