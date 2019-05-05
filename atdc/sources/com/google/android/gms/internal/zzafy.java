package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences.Editor;

final class zzafy extends zzagr {
    private /* synthetic */ int zzZc;
    private /* synthetic */ Context zztF;

    zzafy(Context context, int i) {
        this.zztF = context;
        this.zzZc = i;
        super();
    }

    public final void zzbd() {
        Editor edit = this.zztF.getSharedPreferences("admob", 0).edit();
        edit.putInt("version_code", this.zzZc);
        edit.apply();
    }
}
