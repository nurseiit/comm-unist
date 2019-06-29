package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences.Editor;

final class zzagi extends zzagr {
    private /* synthetic */ int zzZh;
    private /* synthetic */ Context zztF;

    zzagi(Context context, int i) {
        this.zztF = context;
        this.zzZh = i;
        super();
    }

    public final void zzbd() {
        Editor edit = this.zztF.getSharedPreferences("admob", 0).edit();
        edit.putInt("request_in_session_count", this.zzZh);
        edit.apply();
    }
}
