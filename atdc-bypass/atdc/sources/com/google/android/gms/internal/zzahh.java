package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.DownloadManager.Request;
import android.content.Context;
import android.net.Uri;
import android.view.View;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import java.util.Set;

@TargetApi(11)
public class zzahh extends zzahg {
    public final boolean zza(Request request) {
        request.allowScanningByMediaScanner();
        request.setNotificationVisibility(1);
        return true;
    }

    public boolean zza(Context context, WebSettings webSettings) {
        super.zza(context, webSettings);
        return ((Boolean) zzait.zzb(new zzahi(this, context, webSettings))).booleanValue();
    }

    public final boolean zza(Window window) {
        window.setFlags(16777216, 16777216);
        return true;
    }

    public zzakb zzb(zzaka zzaka, boolean z) {
        return new zzale(zzaka, z);
    }

    public final Set<String> zzh(Uri uri) {
        return uri.getQueryParameterNames();
    }

    public WebChromeClient zzm(zzaka zzaka) {
        return new zzakw(zzaka);
    }

    public final boolean zzq(View view) {
        view.setLayerType(0, null);
        return true;
    }

    public final boolean zzr(View view) {
        view.setLayerType(1, null);
        return true;
    }
}
