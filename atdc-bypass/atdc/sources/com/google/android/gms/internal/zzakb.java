package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.NotificationCompat;
import android.support.v4.media.TransportMediator;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzag;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.overlay.zzu;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.ads.internal.zzw;
import com.google.android.gms.iid.InstanceID;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

@zzzn
public class zzakb extends WebViewClient {
    private static final String[] zzabn = new String[]{"UNKNOWN", "HOST_LOOKUP", "UNSUPPORTED_AUTH_SCHEME", "AUTHENTICATION", "PROXY_AUTHENTICATION", "CONNECT", "IO", InstanceID.ERROR_TIMEOUT, "REDIRECT_LOOP", "UNSUPPORTED_SCHEME", "FAILED_SSL_HANDSHAKE", "BAD_URL", "FILE", "FILE_NOT_FOUND", "TOO_MANY_REQUESTS"};
    private static final String[] zzabo = new String[]{"NOT_YET_VALID", "EXPIRED", "ID_MISMATCH", "UNTRUSTED", "DATE_INVALID", "INVALID"};
    private final Object mLock;
    private zzqk zzIT;
    private zzrm zzJC;
    private zzw zzJE;
    private zzwk zzJF;
    protected zzaka zzJH;
    private zzwv zzNH;
    private final zzwt zzabA;
    private zzakj zzabB;
    private boolean zzabC;
    private boolean zzabD;
    private boolean zzabE;
    private int zzabF;
    private OnAttachStateChangeListener zzabG;
    private final HashMap<String, List<zzrd>> zzabp;
    private com.google.android.gms.ads.internal.overlay.zzw zzabq;
    private zzakf zzabr;
    private zzakg zzabs;
    private zzakh zzabt;
    private boolean zzabu;
    private boolean zzabv;
    private OnGlobalLayoutListener zzabw;
    private OnScrollChangedListener zzabx;
    private boolean zzaby;
    private zzag zzabz;
    @Nullable
    protected zzaet zztr;
    private boolean zzwI;
    private zzim zzzL;

    public zzakb(zzaka zzaka, boolean z) {
        this(zzaka, z, new zzwt(zzaka, zzaka.zzit(), new zzlz(zzaka.getContext())), null);
    }

    private zzakb(zzaka zzaka, boolean z, zzwt zzwt, zzwk zzwk) {
        this.zzabp = new HashMap();
        this.mLock = new Object();
        this.zzabu = false;
        this.zzJH = zzaka;
        this.zzwI = z;
        this.zzabA = zzwt;
        this.zzJF = null;
    }

    private final void zza(View view, zzaet zzaet, int i) {
        if (zzaet.zzgZ() && i > 0) {
            zzaet.zzk(view);
            if (zzaet.zzgZ()) {
                zzagz.zzZr.postDelayed(new zzakc(this, view, zzaet, i), 100);
            }
        }
    }

    private final void zza(AdOverlayInfoParcel adOverlayInfoParcel) {
        boolean z = false;
        boolean zzfC = this.zzJF != null ? this.zzJF.zzfC() : false;
        zzbs.zzbx();
        Context context = this.zzJH.getContext();
        if (!zzfC) {
            z = true;
        }
        zzu.zza(context, adOverlayInfoParcel, z);
        if (this.zztr != null) {
            String str = adOverlayInfoParcel.url;
            if (str == null && adOverlayInfoParcel.zzPd != null) {
                str = adOverlayInfoParcel.zzPd.url;
            }
            this.zztr.zzaA(str);
        }
    }

    private final void zzc(Context context, String str, String str2, String str3) {
        if (((Boolean) zzbs.zzbL().zzd(zzmo.zzEw)).booleanValue()) {
            Bundle bundle = new Bundle();
            bundle.putString(NotificationCompat.CATEGORY_ERROR, str);
            bundle.putString("code", str2);
            str = "host";
            if (!TextUtils.isEmpty(str3)) {
                Uri parse = Uri.parse(str3);
                if (parse.getHost() != null) {
                    str2 = parse.getHost();
                    bundle.putString(str, str2);
                    zzbs.zzbz().zza(context, this.zzJH.zziz().zzaP, "gmob-apps", bundle, true);
                }
            }
            str2 = "";
            bundle.putString(str, str2);
            zzbs.zzbz().zza(context, this.zzJH.zziz().zzaP, "gmob-apps", bundle, true);
        }
    }

    private final void zzi(Uri uri) {
        String path = uri.getPath();
        List<zzrd> list = (List) this.zzabp.get(path);
        if (list != null) {
            zzbs.zzbz();
            Map zzg = zzagz.zzg(uri);
            if (zzajc.zzz(2)) {
                String str = "Received GMSG: ";
                path = String.valueOf(path);
                zzafr.v(path.length() != 0 ? str.concat(path) : new String(str));
                for (String str2 : zzg.keySet()) {
                    String str3 = (String) zzg.get(str2);
                    StringBuilder stringBuilder = new StringBuilder((String.valueOf(str2).length() + 4) + String.valueOf(str3).length());
                    stringBuilder.append("  ");
                    stringBuilder.append(str2);
                    stringBuilder.append(": ");
                    stringBuilder.append(str3);
                    zzafr.v(stringBuilder.toString());
                }
            }
            for (zzrd zza : list) {
                zza.zza(this.zzJH, zzg);
            }
            return;
        }
        String valueOf = String.valueOf(uri);
        StringBuilder stringBuilder2 = new StringBuilder(String.valueOf(valueOf).length() + 32);
        stringBuilder2.append("No GMSG handler found for GMSG: ");
        stringBuilder2.append(valueOf);
        zzafr.v(stringBuilder2.toString());
    }

    private final void zziU() {
        if (this.zzabG != null) {
            this.zzJH.getView().removeOnAttachStateChangeListener(this.zzabG);
        }
    }

    private final void zziZ() {
        if (this.zzabr != null && ((this.zzabD && this.zzabF <= 0) || this.zzabE)) {
            this.zzabr.zza(this.zzJH, this.zzabE ^ 1);
            this.zzabr = null;
        }
        this.zzJH.zziK();
    }

    public final void onLoadResource(WebView webView, String str) {
        String str2 = "Loading resource: ";
        String valueOf = String.valueOf(str);
        zzafr.v(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            zzi(parse);
        }
    }

    /* JADX WARNING: Missing block: B:9:0x0014, code skipped:
            r0.zzabD = true;
     */
    /* JADX WARNING: Missing block: B:10:0x0019, code skipped:
            if (r0.zzabs == null) goto L_0x0025;
     */
    /* JADX WARNING: Missing block: B:11:0x001b, code skipped:
            r0.zzabs.zzj(r0.zzJH);
            r0.zzabs = null;
     */
    /* JADX WARNING: Missing block: B:12:0x0025, code skipped:
            zziZ();
     */
    /* JADX WARNING: Missing block: B:13:0x0028, code skipped:
            return;
     */
    public final void onPageFinished(android.webkit.WebView r1, java.lang.String r2) {
        /*
        r0 = this;
        r1 = r0.mLock;
        monitor-enter(r1);
        r2 = r0.zzabC;	 Catch:{ all -> 0x0029 }
        if (r2 == 0) goto L_0x0013;
    L_0x0007:
        r2 = "Blank page loaded, 1...";
        com.google.android.gms.internal.zzafr.v(r2);	 Catch:{ all -> 0x0029 }
        r2 = r0.zzJH;	 Catch:{ all -> 0x0029 }
        r2.zziB();	 Catch:{ all -> 0x0029 }
        monitor-exit(r1);	 Catch:{ all -> 0x0029 }
        return;
    L_0x0013:
        monitor-exit(r1);	 Catch:{ all -> 0x0029 }
        r1 = 1;
        r0.zzabD = r1;
        r1 = r0.zzabs;
        if (r1 == 0) goto L_0x0025;
    L_0x001b:
        r1 = r0.zzabs;
        r2 = r0.zzJH;
        r1.zzj(r2);
        r1 = 0;
        r0.zzabs = r1;
    L_0x0025:
        r0.zziZ();
        return;
    L_0x0029:
        r2 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0029 }
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzakb.onPageFinished(android.webkit.WebView, java.lang.String):void");
    }

    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        String str3;
        if (i < 0) {
            int i2 = (-i) - 1;
            if (i2 < zzabn.length) {
                str3 = zzabn[i2];
                zzc(this.zzJH.getContext(), "http_err", str3, str2);
                super.onReceivedError(webView, i, str, str2);
            }
        }
        str3 = String.valueOf(i);
        zzc(this.zzJH.getContext(), "http_err", str3, str2);
        super.onReceivedError(webView, i, str, str2);
    }

    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        if (sslError != null) {
            int primaryError = sslError.getPrimaryError();
            String valueOf = (primaryError < 0 || primaryError >= zzabo.length) ? String.valueOf(primaryError) : zzabo[primaryError];
            zzc(this.zzJH.getContext(), "ssl_err", valueOf, zzbs.zzbB().zza(sslError));
        }
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
    }

    public final void reset() {
        if (this.zztr != null) {
            this.zztr.zzhb();
            this.zztr = null;
        }
        zziU();
        synchronized (this.mLock) {
            this.zzabp.clear();
            this.zzzL = null;
            this.zzabq = null;
            this.zzabr = null;
            this.zzabs = null;
            this.zzIT = null;
            this.zzabu = false;
            this.zzwI = false;
            this.zzabv = false;
            this.zzaby = false;
            this.zzabz = null;
            this.zzabt = null;
            if (this.zzJF != null) {
                this.zzJF.zzk(true);
                this.zzJF = null;
            }
        }
    }

    @TargetApi(11)
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        try {
            String zzb = zzaez.zzb(str, this.zzJH.getContext());
            if (zzb.equals(str)) {
                zzia zzB = zzia.zzB(str);
                if (zzB == null) {
                    return null;
                }
                zzhx zza = zzbs.zzbE().zza(zzB);
                return (zza == null || !zza.zzcY()) ? null : new WebResourceResponse("", "", zza.zzcZ());
            } else {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(zzb).openConnection();
                zzbs.zzbz().zza(this.zzJH.getContext(), this.zzJH.zziz().zzaP, true, httpURLConnection);
                return new WebResourceResponse(httpURLConnection.getContentType(), httpURLConnection.getHeaderField("encoding"), httpURLConnection.getInputStream());
            }
        } catch (Throwable th) {
            zzbs.zzbD().zza(th, "AdWebViewClient.shouldInterceptRequest");
            return null;
        }
    }

    public boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (!(keyCode == 79 || keyCode == 222)) {
            switch (keyCode) {
                case 85:
                case 86:
                case 87:
                case 88:
                case 89:
                case 90:
                case 91:
                    break;
                default:
                    switch (keyCode) {
                        case TransportMediator.KEYCODE_MEDIA_PLAY /*126*/:
                        case TransportMediator.KEYCODE_MEDIA_PAUSE /*127*/:
                        case 128:
                        case 129:
                        case TransportMediator.KEYCODE_MEDIA_RECORD /*130*/:
                            break;
                        default:
                            return false;
                    }
            }
        }
        return true;
    }

    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        String str2 = "AdWebView shouldOverrideUrlLoading: ";
        String valueOf = String.valueOf(str);
        zzafr.v(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            zzi(parse);
            return true;
        }
        if (this.zzabu && webView == this.zzJH.getWebView()) {
            valueOf = parse.getScheme();
            Object obj = ("http".equalsIgnoreCase(valueOf) || "https".equalsIgnoreCase(valueOf)) ? 1 : null;
            if (obj != null) {
                if (this.zzzL != null) {
                    if (((Boolean) zzbs.zzbL().zzd(zzmo.zzDo)).booleanValue()) {
                        this.zzzL.onAdClicked();
                        if (this.zztr != null) {
                            this.zztr.zzaA(str);
                        }
                        this.zzzL = null;
                    }
                }
                return super.shouldOverrideUrlLoading(webView, str);
            }
        }
        String str3;
        if (this.zzJH.getWebView().willNotDraw()) {
            str3 = "AdWebView unable to handle URL: ";
            str = String.valueOf(str);
            zzajc.zzaT(str.length() != 0 ? str3.concat(str) : new String(str3));
            return true;
        }
        try {
            zzcu zziy = this.zzJH.zziy();
            if (zziy != null && zziy.zzc(parse)) {
                parse = zziy.zza(parse, this.zzJH.getContext(), this.zzJH.getView());
            }
        } catch (zzcv unused) {
            str3 = "Unable to append parameter to URL: ";
            valueOf = String.valueOf(str);
            zzajc.zzaT(valueOf.length() != 0 ? str3.concat(valueOf) : new String(str3));
        }
        if (this.zzJE == null || this.zzJE.zzaR()) {
            zza(new zzc("android.intent.action.VIEW", parse.toString(), null, null, null, null, null));
            return true;
        }
        this.zzJE.zzt(str);
        return true;
    }

    public final void zzE(boolean z) {
        this.zzabu = false;
    }

    public final void zza(int i, int i2, boolean z) {
        this.zzabA.zzc(i, i2);
        if (this.zzJF != null) {
            this.zzJF.zza(i, i2, z);
        }
    }

    public final void zza(OnGlobalLayoutListener onGlobalLayoutListener, OnScrollChangedListener onScrollChangedListener) {
        synchronized (this.mLock) {
            this.zzabv = true;
            this.zzJH.zziJ();
            this.zzabw = onGlobalLayoutListener;
            this.zzabx = onScrollChangedListener;
        }
    }

    public final void zza(zzc zzc) {
        boolean zziA = this.zzJH.zziA();
        zzim zzim = (!zziA || this.zzJH.zzam().zzAt) ? this.zzzL : null;
        zza(new AdOverlayInfoParcel(zzc, zzim, zziA ? null : this.zzabq, this.zzabz, this.zzJH.zziz()));
    }

    public final void zza(zzakf zzakf) {
        this.zzabr = zzakf;
    }

    public final void zza(zzakg zzakg) {
        this.zzabs = zzakg;
    }

    public final void zza(zzakh zzakh) {
        this.zzabt = zzakh;
    }

    public final void zza(zzakj zzakj) {
        this.zzabB = zzakj;
    }

    public final void zza(zzim zzim, com.google.android.gms.ads.internal.overlay.zzw zzw, zzqk zzqk, zzag zzag, boolean z, @Nullable zzrm zzrm, zzw zzw2, zzwv zzwv, @Nullable zzaet zzaet) {
        if (zzw2 == null) {
            zzw2 = new zzw(zzaet);
        }
        this.zzJF = new zzwk(this.zzJH, zzwv);
        this.zztr = zzaet;
        zza("/appEvent", new zzqj(zzqk));
        zza("/backButton", zzqn.zzJe);
        zza("/refresh", zzqn.zzJf);
        zza("/canOpenURLs", zzqn.zzIV);
        zza("/canOpenIntents", zzqn.zzIW);
        zza("/click", zzqn.zzIX);
        zza("/close", zzqn.zzIY);
        zza("/customClose", zzqn.zzIZ);
        zza("/instrument", zzqn.zzJk);
        zza("/delayPageLoaded", zzqn.zzJm);
        zza("/delayPageClosed", zzqn.zzJn);
        zza("/getLocationInfo", zzqn.zzJo);
        zza("/httpTrack", zzqn.zzJa);
        zza("/log", zzqn.zzJb);
        zza("/mraid", new zzrp(zzw2, this.zzJF));
        zza("/mraidLoaded", this.zzabA);
        zza("/open", new zzrq(zzw2, this.zzJF));
        zza("/precache", zzqn.zzJj);
        zza("/touch", zzqn.zzJd);
        zza("/video", zzqn.zzJg);
        zza("/videoMeta", zzqn.zzJh);
        if (zzbs.zzbY().zzp(this.zzJH.getContext())) {
            zza("/logScionEvent", zzqn.zzJi);
        }
        if (zzrm != null) {
            zza("/setInterstitialProperties", new zzrl(zzrm));
        }
        this.zzzL = zzim;
        this.zzabq = zzw;
        this.zzIT = zzqk;
        this.zzabz = zzag;
        this.zzJE = zzw2;
        this.zzNH = zzwv;
        this.zzJC = zzrm;
        this.zzabu = z;
    }

    public final void zza(String str, zzrd zzrd) {
        synchronized (this.mLock) {
            List list = (List) this.zzabp.get(str);
            if (list == null) {
                list = new CopyOnWriteArrayList();
                this.zzabp.put(str, list);
            }
            list.add(zzrd);
        }
    }

    public final void zza(boolean z, int i) {
        zzim zzim = (!this.zzJH.zziA() || this.zzJH.zzam().zzAt) ? this.zzzL : null;
        zza(new AdOverlayInfoParcel(zzim, this.zzabq, this.zzabz, this.zzJH, z, i, this.zzJH.zziz()));
    }

    public final void zza(boolean z, int i, String str) {
        boolean zziA = this.zzJH.zziA();
        zzim zzim = (!zziA || this.zzJH.zzam().zzAt) ? this.zzzL : null;
        zza(new AdOverlayInfoParcel(zzim, zziA ? null : new zzaki(this.zzJH, this.zzabq), this.zzIT, this.zzabz, this.zzJH, z, i, str, this.zzJH.zziz()));
    }

    public final void zza(boolean z, int i, String str, String str2) {
        boolean zziA = this.zzJH.zziA();
        zzim zzim = (!zziA || this.zzJH.zzam().zzAt) ? this.zzzL : null;
        zza(new AdOverlayInfoParcel(zzim, zziA ? null : new zzaki(this.zzJH, this.zzabq), this.zzIT, this.zzabz, this.zzJH, z, i, str, str2, this.zzJH.zziz()));
    }

    public final void zzb(int i, int i2) {
        if (this.zzJF != null) {
            this.zzJF.zzb(i, i2);
        }
    }

    public final void zzb(String str, zzrd zzrd) {
        synchronized (this.mLock) {
            List list = (List) this.zzabp.get(str);
            if (list == null) {
                return;
            }
            list.remove(zzrd);
        }
    }

    public final boolean zzcn() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzwI;
        }
        return z;
    }

    public final void zzfL() {
        synchronized (this.mLock) {
            this.zzabu = false;
            this.zzwI = true;
            zzbs.zzbz();
            zzagz.runOnUiThread(new zzake(this));
        }
    }

    public final zzw zziO() {
        return this.zzJE;
    }

    public final boolean zziP() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzabv;
        }
        return z;
    }

    public final OnGlobalLayoutListener zziQ() {
        OnGlobalLayoutListener onGlobalLayoutListener;
        synchronized (this.mLock) {
            onGlobalLayoutListener = this.zzabw;
        }
        return onGlobalLayoutListener;
    }

    public final OnScrollChangedListener zziR() {
        OnScrollChangedListener onScrollChangedListener;
        synchronized (this.mLock) {
            onScrollChangedListener = this.zzabx;
        }
        return onScrollChangedListener;
    }

    public final boolean zziS() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzaby;
        }
        return z;
    }

    public final void zziT() {
        synchronized (this.mLock) {
            zzafr.v("Loading blank page in WebView, 2...");
            this.zzabC = true;
            this.zzJH.zzaU("about:blank");
        }
    }

    public final void zziV() {
        zzaet zzaet = this.zztr;
        if (zzaet != null) {
            View webView = this.zzJH.getWebView();
            if (ViewCompat.isAttachedToWindow(webView)) {
                zza(webView, zzaet, 10);
                return;
            }
            zziU();
            this.zzabG = new zzakd(this, zzaet);
            this.zzJH.getView().addOnAttachStateChangeListener(this.zzabG);
        }
    }

    public final void zziW() {
        synchronized (this.mLock) {
            this.zzaby = true;
        }
        this.zzabF++;
        zziZ();
    }

    public final void zziX() {
        this.zzabF--;
        zziZ();
    }

    public final void zziY() {
        this.zzabE = true;
        zziZ();
    }

    public final zzakj zzja() {
        return this.zzabB;
    }
}
