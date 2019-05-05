package com.google.android.gms.internal;

import android.database.ContentObserver;
import android.os.Handler;

final class zzfl extends ContentObserver {
    private /* synthetic */ zzfi zzxh;

    public zzfl(zzfi zzfi, Handler handler) {
        this.zzxh = zzfi;
        super(handler);
    }

    public final void onChange(boolean z) {
        super.onChange(z);
        this.zzxh.zzcp();
    }
}
