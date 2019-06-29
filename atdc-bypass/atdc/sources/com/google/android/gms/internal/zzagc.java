package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences.Editor;

final class zzagc extends zzagr {
    private /* synthetic */ String zzZf;
    private /* synthetic */ Context zztF;

    zzagc(Context context, String str) {
        this.zztF = context;
        this.zzZf = str;
        super();
    }

    public final void zzbd() {
        Editor edit = this.zztF.getSharedPreferences("admob", 0).edit();
        edit.putString("native_advanced_settings", this.zzZf);
        edit.apply();
    }
}
