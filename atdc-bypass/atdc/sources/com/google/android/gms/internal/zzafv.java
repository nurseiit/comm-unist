package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences.Editor;

final class zzafv extends zzagr {
    private /* synthetic */ String zzYZ;
    private /* synthetic */ Context zztF;

    zzafv(Context context, String str) {
        this.zztF = context;
        this.zzYZ = str;
        super();
    }

    public final void zzbd() {
        Editor edit = this.zztF.getSharedPreferences("admob", 0).edit();
        edit.putString("content_vertical_hashes", this.zzYZ);
        edit.apply();
    }
}
