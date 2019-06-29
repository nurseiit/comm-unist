package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.zzbs;

final class zzahv implements Runnable {
    private /* synthetic */ zzahq zzZI;

    zzahv(zzahq zzahq) {
        this.zzZI = zzahq;
    }

    public final void run() {
        zzbs.zzbH().zzg(this.zzZI.mContext, this.zzZI.zztV, this.zzZI.zzwH);
    }
}
