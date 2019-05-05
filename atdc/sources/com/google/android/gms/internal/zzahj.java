package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.net.http.SslError;
import android.webkit.WebChromeClient;

@TargetApi(14)
public class zzahj extends zzahh {
    public final String zza(SslError sslError) {
        return sslError.getUrl();
    }

    public int zzhX() {
        return 1;
    }

    public final WebChromeClient zzm(zzaka zzaka) {
        return new zzalf(zzaka);
    }
}
