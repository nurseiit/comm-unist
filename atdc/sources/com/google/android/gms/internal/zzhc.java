package com.google.android.gms.internal;

import android.webkit.ValueCallback;

final class zzhc implements ValueCallback<String> {
    private /* synthetic */ zzhb zzyO;

    zzhc(zzhb zzhb) {
        this.zzyO = zzhb;
    }

    public final /* synthetic */ void onReceiveValue(Object obj) {
        this.zzyO.zzyJ.zza(this.zzyO.zzyL, this.zzyO.zzyM, (String) obj, this.zzyO.zzyN);
    }
}
