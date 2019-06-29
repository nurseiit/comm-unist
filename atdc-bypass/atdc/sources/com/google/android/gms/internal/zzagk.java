package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences.Editor;

final class zzagk extends zzagr {
    private /* synthetic */ long zzZi;
    private /* synthetic */ Context zztF;

    zzagk(Context context, long j) {
        this.zztF = context;
        this.zzZi = j;
        super();
    }

    public final void zzbd() {
        Editor edit = this.zztF.getSharedPreferences("admob", 0).edit();
        edit.putLong("first_ad_req_time_ms", this.zzZi);
        edit.apply();
    }
}
