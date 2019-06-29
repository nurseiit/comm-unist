package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.view.View;
import android.webkit.WebChromeClient.CustomViewCallback;

@zzzn
@TargetApi(14)
public final class zzalf extends zzakw {
    public zzalf(zzaka zzaka) {
        super(zzaka);
    }

    public final void onShowCustomView(View view, int i, CustomViewCallback customViewCallback) {
        zza(view, i, customViewCallback);
    }
}
