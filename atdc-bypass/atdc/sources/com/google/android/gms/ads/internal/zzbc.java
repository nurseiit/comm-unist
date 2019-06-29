package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.zzaff;
import com.google.android.gms.internal.zzafg;

final class zzbc implements Runnable {
    private /* synthetic */ zzafg zzsW;
    private /* synthetic */ zzbb zzuQ;

    zzbc(zzbb zzbb, zzafg zzafg) {
        this.zzuQ = zzbb;
        this.zzsW = zzafg;
    }

    public final void run() {
        this.zzuQ.zzb(new zzaff(this.zzsW, null, null, null, null, null, null, null));
    }
}
