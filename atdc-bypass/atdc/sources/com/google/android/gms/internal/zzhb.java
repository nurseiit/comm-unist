package com.google.android.gms.internal;

import android.webkit.ValueCallback;
import android.webkit.WebView;

final class zzhb implements Runnable {
    final /* synthetic */ zzgz zzyJ;
    private ValueCallback<String> zzyK = new zzhc(this);
    final /* synthetic */ zzgt zzyL;
    final /* synthetic */ WebView zzyM;
    final /* synthetic */ boolean zzyN;

    zzhb(zzgz zzgz, zzgt zzgt, WebView webView, boolean z) {
        this.zzyJ = zzgz;
        this.zzyL = zzgt;
        this.zzyM = webView;
        this.zzyN = z;
    }

    public final void run() {
        if (this.zzyM.getSettings().getJavaScriptEnabled()) {
            try {
                this.zzyM.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", this.zzyK);
            } catch (Throwable unused) {
                this.zzyK.onReceiveValue("");
            }
        }
    }
}
