package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences.Editor;

final class zzafu extends zzagr {
    private /* synthetic */ boolean zzYY;
    private /* synthetic */ Context zztF;

    zzafu(Context context, boolean z) {
        this.zztF = context;
        this.zzYY = z;
        super();
    }

    public final void zzbd() {
        Editor edit = this.zztF.getSharedPreferences("admob", 0).edit();
        edit.putBoolean("use_https", this.zzYY);
        edit.apply();
    }
}
