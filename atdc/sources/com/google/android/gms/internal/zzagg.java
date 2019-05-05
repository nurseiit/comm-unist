package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences.Editor;

final class zzagg extends zzagr {
    private /* synthetic */ long zzZg;
    private /* synthetic */ Context zztF;

    zzagg(Context context, long j) {
        this.zztF = context;
        this.zzZg = j;
        super();
    }

    public final void zzbd() {
        Editor edit = this.zztF.getSharedPreferences("admob", 0).edit();
        edit.putLong("app_last_background_time_ms", this.zzZg);
        edit.apply();
    }
}
