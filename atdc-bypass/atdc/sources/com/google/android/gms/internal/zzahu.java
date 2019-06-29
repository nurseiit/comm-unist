package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.zzbs;

final class zzahu implements Runnable {
    private /* synthetic */ zzahq zzZI;

    zzahu(zzahq zzahq) {
        this.zzZI = zzahq;
    }

    public final void run() {
        zzbs.zzbH().zzf(this.zzZI.mContext, this.zzZI.zztV, this.zzZI.zzwH);
    }
}
