package com.google.android.gms.ads.internal;

import android.view.View;
import android.view.View.OnClickListener;

final class zzo implements OnClickListener {
    private /* synthetic */ zzl zzte;
    private /* synthetic */ zzw zztf;

    zzo(zzl zzl, zzw zzw) {
        this.zzte = zzl;
        this.zztf = zzw;
    }

    public final void onClick(View view) {
        this.zztf.recordClick();
        if (this.zzte.zztc != null) {
            this.zzte.zztc.zzha();
        }
    }
}
