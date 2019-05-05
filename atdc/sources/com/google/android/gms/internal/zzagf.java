package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences.Editor;

final class zzagf extends zzagr {
    private /* synthetic */ Context zztF;

    zzagf(Context context) {
        this.zztF = context;
        super();
    }

    public final void zzbd() {
        Editor edit = this.zztF.getSharedPreferences("admob", 0).edit();
        edit.remove("native_advanced_settings");
        edit.apply();
    }
}
