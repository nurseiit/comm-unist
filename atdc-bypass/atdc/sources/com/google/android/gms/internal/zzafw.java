package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences.Editor;

final class zzafw extends zzagr {
    private /* synthetic */ boolean zzZa;
    private /* synthetic */ Context zztF;

    zzafw(Context context, boolean z) {
        this.zztF = context;
        this.zzZa = z;
        super();
    }

    public final void zzbd() {
        Editor edit = this.zztF.getSharedPreferences("admob", 0).edit();
        edit.putBoolean("auto_collect_location", this.zzZa);
        edit.apply();
    }
}
