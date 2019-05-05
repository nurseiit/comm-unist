package com.google.android.gms.internal;

import android.content.Context;
import com.bumptech.glide.load.Key;

@zzzn
public class zzxz extends zzxr implements zzakf {
    zzxz(Context context, zzafg zzafg, zzaka zzaka, zzxy zzxy) {
        super(context, zzafg, zzaka, zzxy);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzgo() {
        if (this.zzQR.errorCode == -2) {
            this.zzJH.zziw().zza((zzakf) this);
            zzgq();
            zzajc.zzaC("Loading HTML in WebView.");
            this.zzJH.loadDataWithBaseURL(this.zzQR.zzPi, this.zzQR.body, "text/html", Key.STRING_CHARSET_NAME, null);
        }
    }

    /* Access modifiers changed, original: protected */
    public void zzgq() {
    }
}
