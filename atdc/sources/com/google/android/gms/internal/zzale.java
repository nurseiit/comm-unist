package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;

@zzzn
@TargetApi(11)
public final class zzale extends zzalg {
    public zzale(zzaka zzaka, boolean z) {
        super(zzaka, z);
    }

    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return zza(webView, str, null);
    }
}
