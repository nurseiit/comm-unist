package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.zzaff;
import com.google.android.gms.internal.zzafg;

final class zzk implements Runnable {
    private /* synthetic */ zzafg zzsW;
    private /* synthetic */ zzi zztb;

    zzk(zzi zzi, zzafg zzafg) {
        this.zztb = zzi;
        this.zzsW = zzafg;
    }

    public final void run() {
        this.zztb.zzb(new zzaff(this.zzsW, null, null, null, null, null, null, null));
    }
}
