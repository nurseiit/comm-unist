package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences.Editor;

final class zzaga extends zzagr {
    private /* synthetic */ String zzZd;
    private /* synthetic */ long zzZe;
    private /* synthetic */ Context zztF;

    zzaga(Context context, String str, long j) {
        this.zztF = context;
        this.zzZd = str;
        this.zzZe = j;
        super();
    }

    public final void zzbd() {
        Editor edit = this.zztF.getSharedPreferences("admob", 0).edit();
        edit.putString("app_settings_json", this.zzZd);
        edit.putLong("app_settings_last_update_ms", this.zzZe);
        edit.apply();
    }
}
