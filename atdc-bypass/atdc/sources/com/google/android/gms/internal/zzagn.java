package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences.Editor;

final class zzagn extends zzagr {
    private /* synthetic */ boolean zzZj;
    private /* synthetic */ Context zztF;

    zzagn(Context context, boolean z) {
        this.zztF = context;
        this.zzZj = z;
        super();
    }

    public final void zzbd() {
        Editor edit = this.zztF.getSharedPreferences("admob", 0).edit();
        edit.putBoolean("content_url_opted_out", this.zzZj);
        edit.apply();
    }
}
