package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.annotation.Nullable;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.androidnetworking.common.ANConstants;
import com.bumptech.glide.load.Key;
import com.google.android.gms.ads.internal.zzbs;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@zzzn
@TargetApi(11)
public class zzalg extends zzakb {
    public zzalg(zzaka zzaka, boolean z) {
        super(zzaka, z);
    }

    /* Access modifiers changed, original: protected|final */
    public final WebResourceResponse zza(WebView webView, String str, @Nullable Map<String, String> map) {
        if (webView instanceof zzaka) {
            zzaka zzaka = (zzaka) webView;
            if (this.zztr != null) {
                this.zztr.zza(str, map, 1);
            }
            if (!"mraid.js".equalsIgnoreCase(new File(str).getName())) {
                return super.shouldInterceptRequest(webView, str);
            }
            if (zzaka.zziw() != null) {
                zzaka.zziw().zzfL();
            }
            zzme zzme = zzaka.zzam().zzAt ? zzmo.zzCP : zzaka.zziA() ? zzmo.zzCO : zzmo.zzCN;
            String str2 = (String) zzbs.zzbL().zzd(zzme);
            try {
                Context context = zzaka.getContext();
                String str3 = zzaka.zziz().zzaP;
                HashMap hashMap = new HashMap();
                hashMap.put(ANConstants.USER_AGENT, zzbs.zzbz().zzs(context, str3));
                hashMap.put("Cache-Control", "max-stale=3600");
                str2 = (String) new zzaie(context).zzb(str2, hashMap).get(60, TimeUnit.SECONDS);
                return str2 == null ? null : new WebResourceResponse("application/javascript", Key.STRING_CHARSET_NAME, new ByteArrayInputStream(str2.getBytes(Key.STRING_CHARSET_NAME)));
            } catch (IOException | InterruptedException | ExecutionException | TimeoutException e) {
                str = "Could not fetch MRAID JS. ";
                str2 = String.valueOf(e.getMessage());
                zzajc.zzaT(str2.length() != 0 ? str.concat(str2) : new String(str));
                return null;
            }
        }
        zzajc.zzaT("Tried to intercept request from a WebView that wasn't an AdWebView.");
        return null;
    }
}
