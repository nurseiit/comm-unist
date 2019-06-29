package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.os.Message;
import android.support.v4.media.session.PlaybackStateCompat;
import android.view.View;
import android.view.WindowManager.BadTokenException;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions.Callback;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebStorage.QuotaUpdater;
import android.webkit.WebView;
import android.webkit.WebView.WebViewTransport;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.zzbs;

@zzzn
@TargetApi(11)
public class zzakw extends WebChromeClient {
    private final zzaka zzJH;

    public zzakw(zzaka zzaka) {
        this.zzJH = zzaka;
    }

    private static Context zza(WebView webView) {
        if (!(webView instanceof zzaka)) {
            return webView.getContext();
        }
        zzaka zzaka = (zzaka) webView;
        Activity zzis = zzaka.zzis();
        return zzis != null ? zzis : zzaka.getContext();
    }

    private static boolean zza(Context context, String str, String str2, String str3, JsResult jsResult, JsPromptResult jsPromptResult, boolean z) {
        try {
            AlertDialog create;
            Builder builder = new Builder(context);
            builder.setTitle(str);
            if (z) {
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(1);
                TextView textView = new TextView(context);
                textView.setText(str2);
                EditText editText = new EditText(context);
                editText.setText(str3);
                linearLayout.addView(textView);
                linearLayout.addView(editText);
                create = builder.setView(linearLayout).setPositiveButton(17039370, new zzalc(jsPromptResult, editText)).setNegativeButton(17039360, new zzalb(jsPromptResult)).setOnCancelListener(new zzala(jsPromptResult)).create();
            } else {
                create = builder.setMessage(str2).setPositiveButton(17039370, new zzakz(jsResult)).setNegativeButton(17039360, new zzaky(jsResult)).setOnCancelListener(new zzakx(jsResult)).create();
            }
            create.show();
            return true;
        } catch (BadTokenException e) {
            zzajc.zzc("Fail to display Dialog.", e);
            return true;
        }
    }

    public final void onCloseWindow(WebView webView) {
        String str;
        if (webView instanceof zzaka) {
            zzm zziu = ((zzaka) webView).zziu();
            if (zziu == null) {
                str = "Tried to close an AdWebView not associated with an overlay.";
            } else {
                zziu.close();
                return;
            }
        }
        str = "Tried to close a WebView that wasn't an AdWebView.";
        zzajc.zzaT(str);
    }

    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        String valueOf = String.valueOf(consoleMessage.message());
        String valueOf2 = String.valueOf(consoleMessage.sourceId());
        int lineNumber = consoleMessage.lineNumber();
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 19) + String.valueOf(valueOf2).length());
        stringBuilder.append("JS: ");
        stringBuilder.append(valueOf);
        stringBuilder.append(" (");
        stringBuilder.append(valueOf2);
        stringBuilder.append(":");
        stringBuilder.append(lineNumber);
        stringBuilder.append(")");
        valueOf = stringBuilder.toString();
        if (valueOf.contains("Application Cache")) {
            return super.onConsoleMessage(consoleMessage);
        }
        switch (zzald.zzacK[consoleMessage.messageLevel().ordinal()]) {
            case 1:
                zzajc.e(valueOf);
                break;
            case 2:
                zzajc.zzaT(valueOf);
                break;
            case 5:
                zzajc.zzaC(valueOf);
                break;
            default:
                zzajc.zzaS(valueOf);
                break;
        }
        return super.onConsoleMessage(consoleMessage);
    }

    public final boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        WebViewTransport webViewTransport = (WebViewTransport) message.obj;
        WebView webView2 = new WebView(webView.getContext());
        webView2.setWebViewClient(this.zzJH.zziw());
        webViewTransport.setWebView(webView2);
        message.sendToTarget();
        return true;
    }

    public final void onExceededDatabaseQuota(String str, String str2, long j, long j2, long j3, QuotaUpdater quotaUpdater) {
        long j4 = 5242880 - j3;
        long j5 = 0;
        if (j4 <= 0) {
            quotaUpdater.updateQuota(j);
            return;
        }
        if (j != 0) {
            if (j2 == 0) {
                j = Math.min(j + Math.min(PlaybackStateCompat.ACTION_PREPARE_FROM_URI, j4), 1048576);
            } else if (j2 <= Math.min(1048576 - j, j4)) {
                j5 = j + j2;
            }
            j5 = j;
        } else if (j2 <= j4 && j2 <= 1048576) {
            j5 = j2;
        }
        quotaUpdater.updateQuota(j5);
    }

    public final void onGeolocationPermissionsShowPrompt(String str, Callback callback) {
        if (callback != null) {
            boolean z;
            zzbs.zzbz();
            if (!zzagz.zzc(this.zzJH.getContext(), this.zzJH.getContext().getPackageName(), "android.permission.ACCESS_FINE_LOCATION")) {
                zzbs.zzbz();
                if (!zzagz.zzc(this.zzJH.getContext(), this.zzJH.getContext().getPackageName(), "android.permission.ACCESS_COARSE_LOCATION")) {
                    z = false;
                    callback.invoke(str, z, true);
                }
            }
            z = true;
            callback.invoke(str, z, true);
        }
    }

    public final void onHideCustomView() {
        zzm zziu = this.zzJH.zziu();
        if (zziu == null) {
            zzajc.zzaT("Could not get ad overlay when hiding custom view.");
        } else {
            zziu.zzfI();
        }
    }

    public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        return zza(zza(webView), str, str2, null, jsResult, null, false);
    }

    public final boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        return zza(zza(webView), str, str2, null, jsResult, null, false);
    }

    public final boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        return zza(zza(webView), str, str2, null, jsResult, null, false);
    }

    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        return zza(zza(webView), str, str2, str3, null, jsPromptResult, true);
    }

    public final void onReachedMaxAppCacheSize(long j, long j2, QuotaUpdater quotaUpdater) {
        long j3 = j + PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
        if (5242880 - j2 < j3) {
            quotaUpdater.updateQuota(0);
        } else {
            quotaUpdater.updateQuota(j3);
        }
    }

    public final void onShowCustomView(View view, CustomViewCallback customViewCallback) {
        zza(view, -1, customViewCallback);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zza(View view, int i, CustomViewCallback customViewCallback) {
        zzm zziu = this.zzJH.zziu();
        if (zziu == null) {
            zzajc.zzaT("Could not get ad overlay when showing custom view.");
            customViewCallback.onCustomViewHidden();
            return;
        }
        zziu.zza(view, customViewCallback);
        zziu.setRequestedOrientation(i);
    }
}
