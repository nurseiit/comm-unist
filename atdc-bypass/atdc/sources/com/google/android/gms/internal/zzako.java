package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Build.VERSION;
import android.support.annotation.Nullable;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.zzbl;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.common.util.zzq;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@zzzn
final class zzako extends WebView implements OnGlobalLayoutListener, DownloadListener, zzaka {
    private final Object mLock = new Object();
    @Nullable
    private final zzcu zzIc;
    private int zzNY = -1;
    private int zzNZ = -1;
    private int zzOb = -1;
    private int zzOc = -1;
    private String zzQx = "";
    private zzmz zzQy;
    private Boolean zzYA;
    private final zzakr zzabS;
    private final zzbl zzabT;
    private zzakb zzabU;
    private zzm zzabV;
    private boolean zzabW;
    private boolean zzabX;
    private boolean zzabY;
    private boolean zzabZ;
    private int zzaca;
    private boolean zzacb = true;
    private boolean zzacc = false;
    private zzaks zzacd;
    private boolean zzace;
    private boolean zzacf;
    private zznw zzacg;
    private int zzach;
    private int zzaci;
    private zzmz zzacj;
    private zzmz zzack;
    private zzna zzacl;
    private WeakReference<OnClickListener> zzacm;
    private zzm zzacn;
    private boolean zzaco;
    private Map<String, zzsb> zzacp;
    private final zzig zzacq;
    private final zzv zzsS;
    private final zzaje zztW;
    private zziv zzuZ;
    private zzaix zzwC;
    private final WindowManager zzwR;

    private zzako(zzakr zzakr, zziv zziv, boolean z, boolean z2, @Nullable zzcu zzcu, zzaje zzaje, zznb zznb, zzbl zzbl, zzv zzv, zzig zzig) {
        super(zzakr);
        this.zzabS = zzakr;
        this.zzuZ = zziv;
        this.zzabY = z;
        this.zzaca = -1;
        this.zzIc = zzcu;
        this.zztW = zzaje;
        this.zzabT = zzbl;
        this.zzsS = zzv;
        this.zzwR = (WindowManager) getContext().getSystemService("window");
        this.zzacq = zzig;
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        try {
            settings.setJavaScriptEnabled(true);
        } catch (NullPointerException e) {
            zzajc.zzb("Unable to enable Javascript.", e);
        }
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(2);
        }
        settings.setUserAgentString(zzbs.zzbz().zzs(zzakr, zzaje.zzaP));
        zzbs.zzbB().zza(getContext(), settings);
        setDownloadListener(this);
        zzjd();
        if (zzq.zzsa()) {
            addJavascriptInterface(new zzakv(this), "googleAdsJsInterface");
        }
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        this.zzwC = new zzaix(this.zzabS.zzis(), this, this, null);
        zzd(zznb);
        zzbs.zzbB().zzR(zzakr);
    }

    private final void zzF(boolean z) {
        Map hashMap = new HashMap();
        hashMap.put("isVisible", z ? "1" : "0");
        zza("onAdVisibilityChanged", hashMap);
    }

    private final void zza(Boolean bool) {
        synchronized (this.mLock) {
            this.zzYA = bool;
        }
        zzbs.zzbD().zza(bool);
    }

    private final void zzaW(String str) {
        synchronized (this.mLock) {
            if (isDestroyed()) {
                zzajc.zzaT("The webview is destroyed. Ignoring action.");
            } else {
                loadUrl(str);
            }
        }
    }

    private final void zzaX(String str) {
        String str2;
        if (zzq.zzsc()) {
            if (zzhw() == null) {
                synchronized (this.mLock) {
                    this.zzYA = zzbs.zzbD().zzhw();
                    if (this.zzYA == null) {
                        try {
                            evaluateJavascript("(function(){})()", null);
                            zza(Boolean.valueOf(true));
                        } catch (IllegalStateException unused) {
                            zza(Boolean.valueOf(false));
                        }
                    }
                }
            }
            if (zzhw().booleanValue()) {
                synchronized (this.mLock) {
                    if (isDestroyed()) {
                        zzajc.zzaT("The webview is destroyed. Ignoring action.");
                    } else {
                        evaluateJavascript(str, null);
                    }
                }
                return;
            }
            str2 = "javascript:";
            str = String.valueOf(str);
            zzaW(str.length() != 0 ? str2.concat(str) : new String(str2));
            return;
        }
        str2 = "javascript:";
        str = String.valueOf(str);
        zzaW(str.length() != 0 ? str2.concat(str) : new String(str2));
    }

    static zzako zzb(Context context, zziv zziv, boolean z, boolean z2, @Nullable zzcu zzcu, zzaje zzaje, zznb zznb, zzbl zzbl, zzv zzv, zzig zzig) {
        return new zzako(new zzakr(context), zziv, z, z2, zzcu, zzaje, zznb, zzbl, zzv, zzig);
    }

    private final void zzd(zznb zznb) {
        zzjg();
        this.zzacl = new zzna(new zznb(true, "make_wv", this.zzuZ.zzAs));
        this.zzacl.zzdR().zzc(zznb);
        this.zzQy = zzmu.zzb(this.zzacl.zzdR());
        this.zzacl.zza("native:view_create", this.zzQy);
        this.zzack = null;
        this.zzacj = null;
    }

    private final void zzhI() {
        synchronized (this.mLock) {
            if (!this.zzaco) {
                this.zzaco = true;
                zzbs.zzbD().zzhI();
            }
        }
    }

    private final Boolean zzhw() {
        Boolean bool;
        synchronized (this.mLock) {
            bool = this.zzYA;
        }
        return bool;
    }

    private final boolean zzjb() {
        boolean z = false;
        if (!this.zzabU.zzcn() && !this.zzabU.zziP()) {
            return false;
        }
        int i;
        int i2;
        zzbs.zzbz();
        DisplayMetrics zza = zzagz.zza(this.zzwR);
        zzji.zzds();
        int zzb = zzaiy.zzb(zza, zza.widthPixels);
        zzji.zzds();
        int zzb2 = zzaiy.zzb(zza, zza.heightPixels);
        Activity zzis = this.zzabS.zzis();
        if (zzis == null || zzis.getWindow() == null) {
            i = zzb;
            i2 = zzb2;
        } else {
            zzbs.zzbz();
            int[] zzf = zzagz.zzf(zzis);
            zzji.zzds();
            i = zzaiy.zzb(zza, zzf[0]);
            zzji.zzds();
            i2 = zzaiy.zzb(zza, zzf[1]);
        }
        if (this.zzNY == zzb && this.zzNZ == zzb2 && this.zzOb == i && this.zzOc == i2) {
            return false;
        }
        if (!(this.zzNY == zzb && this.zzNZ == zzb2)) {
            z = true;
        }
        this.zzNY = zzb;
        this.zzNZ = zzb2;
        this.zzOb = i;
        this.zzOc = i2;
        new zzwu(this).zza(zzb, zzb2, i, i2, zza.density, this.zzwR.getDefaultDisplay().getRotation());
        return z;
    }

    private final void zzjc() {
        zzmu.zza(this.zzacl.zzdR(), this.zzQy, "aeh2");
    }

    private final void zzjd() {
        synchronized (this.mLock) {
            if (!this.zzabY) {
                if (!this.zzuZ.zzAt) {
                    if (VERSION.SDK_INT < 18) {
                        zzajc.zzaC("Disabling hardware acceleration on an AdView.");
                        synchronized (this.mLock) {
                            if (!this.zzabZ) {
                                zzbs.zzbB().zzr(this);
                            }
                            this.zzabZ = true;
                        }
                    } else {
                        zzajc.zzaC("Enabling hardware acceleration on an AdView.");
                        zzje();
                    }
                }
            }
            zzajc.zzaC("Enabling hardware acceleration on an overlay.");
            zzje();
        }
    }

    private final void zzje() {
        synchronized (this.mLock) {
            if (this.zzabZ) {
                zzbs.zzbB().zzq(this);
            }
            this.zzabZ = false;
        }
    }

    private final void zzjf() {
        synchronized (this.mLock) {
            this.zzacp = null;
        }
    }

    private final void zzjg() {
        if (this.zzacl != null) {
            zznb zzdR = this.zzacl.zzdR();
            if (!(zzdR == null || zzbs.zzbD().zzhr() == null)) {
                zzbs.zzbD().zzhr().zza(zzdR);
            }
        }
    }

    public final void destroy() {
        synchronized (this.mLock) {
            zzjg();
            this.zzwC.zzih();
            if (this.zzabV != null) {
                this.zzabV.close();
                this.zzabV.onDestroy();
                this.zzabV = null;
            }
            this.zzabU.reset();
            if (this.zzabX) {
                return;
            }
            zzbs.zzbW();
            zzsa.zze(this);
            zzjf();
            this.zzabX = true;
            zzafr.v("Initiating WebView self destruct sequence in 3...");
            this.zzabU.zziT();
        }
    }

    /* JADX WARNING: Missing block: B:9:0x0015, code skipped:
            return;
     */
    @android.annotation.TargetApi(19)
    public final void evaluateJavascript(java.lang.String r3, android.webkit.ValueCallback<java.lang.String> r4) {
        /*
        r2 = this;
        r0 = r2.mLock;
        monitor-enter(r0);
        r1 = r2.isDestroyed();	 Catch:{ all -> 0x001b }
        if (r1 == 0) goto L_0x0016;
    L_0x0009:
        r3 = "The webview is destroyed. Ignoring action.";
        com.google.android.gms.internal.zzajc.zzaT(r3);	 Catch:{ all -> 0x001b }
        if (r4 == 0) goto L_0x0014;
    L_0x0010:
        r3 = 0;
        r4.onReceiveValue(r3);	 Catch:{ all -> 0x001b }
    L_0x0014:
        monitor-exit(r0);	 Catch:{ all -> 0x001b }
        return;
    L_0x0016:
        super.evaluateJavascript(r3, r4);	 Catch:{ all -> 0x001b }
        monitor-exit(r0);	 Catch:{ all -> 0x001b }
        return;
    L_0x001b:
        r3 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x001b }
        throw r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzako.evaluateJavascript(java.lang.String, android.webkit.ValueCallback):void");
    }

    /* Access modifiers changed, original: protected|final */
    public final void finalize() throws Throwable {
        try {
            if (this.mLock != null) {
                synchronized (this.mLock) {
                    if (!this.zzabX) {
                        this.zzabU.reset();
                        zzbs.zzbW();
                        zzsa.zze(this);
                        zzjf();
                        zzhI();
                    }
                }
            }
            super.finalize();
        } catch (Throwable th) {
            super.finalize();
        }
    }

    public final String getRequestId() {
        String str;
        synchronized (this.mLock) {
            str = this.zzQx;
        }
        return str;
    }

    public final int getRequestedOrientation() {
        int i;
        synchronized (this.mLock) {
            i = this.zzaca;
        }
        return i;
    }

    public final View getView() {
        return this;
    }

    public final WebView getWebView() {
        return this;
    }

    public final boolean isDestroyed() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzabX;
        }
        return z;
    }

    public final void loadData(String str, String str2, String str3) {
        synchronized (this.mLock) {
            if (isDestroyed()) {
                zzajc.zzaT("The webview is destroyed. Ignoring action.");
            } else {
                super.loadData(str, str2, str3);
            }
        }
    }

    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        synchronized (this.mLock) {
            if (isDestroyed()) {
                zzajc.zzaT("The webview is destroyed. Ignoring action.");
            } else {
                super.loadDataWithBaseURL(str, str2, str3, str4, str5);
            }
        }
    }

    public final void loadUrl(String str) {
        synchronized (this.mLock) {
            if (isDestroyed()) {
                zzajc.zzaT("The webview is destroyed. Ignoring action.");
            } else {
                try {
                    super.loadUrl(str);
                } catch (Throwable th) {
                    zzbs.zzbD().zza(th, "AdWebViewImpl.loadUrl");
                    zzajc.zzc("Could not call loadUrl. ", th);
                }
            }
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final void onAttachedToWindow() {
        synchronized (this.mLock) {
            super.onAttachedToWindow();
            if (!isDestroyed()) {
                this.zzwC.onAttachedToWindow();
            }
            boolean z = this.zzace;
            if (this.zzabU != null && this.zzabU.zziP()) {
                if (!this.zzacf) {
                    OnGlobalLayoutListener zziQ = this.zzabU.zziQ();
                    if (zziQ != null) {
                        zzbs.zzbX();
                        zzajv.zza((View) this, zziQ);
                    }
                    OnScrollChangedListener zziR = this.zzabU.zziR();
                    if (zziR != null) {
                        zzbs.zzbX();
                        zzajv.zza((View) this, zziR);
                    }
                    this.zzacf = true;
                }
                zzjb();
                z = true;
            }
            zzF(z);
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final void onDetachedFromWindow() {
        synchronized (this.mLock) {
            if (!isDestroyed()) {
                this.zzwC.onDetachedFromWindow();
            }
            super.onDetachedFromWindow();
            if (this.zzacf && this.zzabU != null && this.zzabU.zziP() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                OnGlobalLayoutListener zziQ = this.zzabU.zziQ();
                if (zziQ != null) {
                    zzbs.zzbB().zza(getViewTreeObserver(), zziQ);
                }
                OnScrollChangedListener zziR = this.zzabU.zziR();
                if (zziR != null) {
                    getViewTreeObserver().removeOnScrollChangedListener(zziR);
                }
                this.zzacf = false;
            }
        }
        zzF(false);
    }

    public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            zzbs.zzbz();
            zzagz.zzb(getContext(), intent);
        } catch (ActivityNotFoundException unused) {
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 51) + String.valueOf(str4).length());
            stringBuilder.append("Couldn't find an Activity to view url/mimetype: ");
            stringBuilder.append(str);
            stringBuilder.append(" / ");
            stringBuilder.append(str4);
            zzajc.zzaC(stringBuilder.toString());
        }
    }

    /* Access modifiers changed, original: protected|final */
    @TargetApi(21)
    public final void onDraw(Canvas canvas) {
        if (!isDestroyed()) {
            if (VERSION.SDK_INT != 21 || !canvas.isHardwareAccelerated() || isAttachedToWindow()) {
                super.onDraw(canvas);
                if (!(this.zzabU == null || this.zzabU.zzja() == null)) {
                    this.zzabU.zzja().zzaS();
                }
            }
        }
    }

    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if (((Boolean) zzbs.zzbL().zzd(zzmo.zzDF)).booleanValue()) {
            float axisValue = motionEvent.getAxisValue(9);
            float axisValue2 = motionEvent.getAxisValue(10);
            if (motionEvent.getActionMasked() == 8 && ((axisValue > 0.0f && !canScrollVertically(-1)) || ((axisValue < 0.0f && !canScrollVertically(1)) || ((axisValue2 > 0.0f && !canScrollHorizontally(-1)) || (axisValue2 < 0.0f && !canScrollHorizontally(1)))))) {
                return false;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    public final void onGlobalLayout() {
        boolean zzjb = zzjb();
        zzm zziu = zziu();
        if (zziu != null && zzjb) {
            zziu.zzfO();
        }
    }

    /* Access modifiers changed, original: protected|final */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00c4  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x0139  */
    /* JADX WARNING: Missing block: B:60:0x0141, code skipped:
            return;
     */
    @android.annotation.SuppressLint({"DrawAllocation"})
    public final void onMeasure(int r8, int r9) {
        /*
        r7 = this;
        r0 = r7.mLock;
        monitor-enter(r0);
        r1 = r7.isDestroyed();	 Catch:{ all -> 0x0147 }
        r2 = 0;
        if (r1 == 0) goto L_0x000f;
    L_0x000a:
        r7.setMeasuredDimension(r2, r2);	 Catch:{ all -> 0x0147 }
        monitor-exit(r0);	 Catch:{ all -> 0x0147 }
        return;
    L_0x000f:
        r1 = r7.isInEditMode();	 Catch:{ all -> 0x0147 }
        if (r1 != 0) goto L_0x0142;
    L_0x0015:
        r1 = r7.zzabY;	 Catch:{ all -> 0x0147 }
        if (r1 != 0) goto L_0x0142;
    L_0x0019:
        r1 = r7.zzuZ;	 Catch:{ all -> 0x0147 }
        r1 = r1.zzAv;	 Catch:{ all -> 0x0147 }
        if (r1 == 0) goto L_0x0021;
    L_0x001f:
        goto L_0x0142;
    L_0x0021:
        r1 = r7.zzuZ;	 Catch:{ all -> 0x0147 }
        r1 = r1.zzAw;	 Catch:{ all -> 0x0147 }
        if (r1 == 0) goto L_0x0079;
    L_0x0027:
        r1 = com.google.android.gms.internal.zzmo.zzFD;	 Catch:{ all -> 0x0147 }
        r2 = com.google.android.gms.ads.internal.zzbs.zzbL();	 Catch:{ all -> 0x0147 }
        r1 = r2.zzd(r1);	 Catch:{ all -> 0x0147 }
        r1 = (java.lang.Boolean) r1;	 Catch:{ all -> 0x0147 }
        r1 = r1.booleanValue();	 Catch:{ all -> 0x0147 }
        if (r1 != 0) goto L_0x0074;
    L_0x0039:
        r1 = com.google.android.gms.common.util.zzq.zzsa();	 Catch:{ all -> 0x0147 }
        if (r1 != 0) goto L_0x0040;
    L_0x003f:
        goto L_0x0074;
    L_0x0040:
        r1 = "/contentHeight";
        r2 = new com.google.android.gms.internal.zzakp;	 Catch:{ all -> 0x0147 }
        r2.<init>(r7);	 Catch:{ all -> 0x0147 }
        r7.zza(r1, r2);	 Catch:{ all -> 0x0147 }
        r1 = "(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = 'gmsg://mobileads.google.com/contentHeight?';  url += 'height=' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById('afma-notify-fluid');    if (!frame) {      frame = document.createElement('IFRAME');      frame.id = 'afma-notify-fluid';      frame.style.display = 'none';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();";
        r7.zzaX(r1);	 Catch:{ all -> 0x0147 }
        r1 = r7.zzabS;	 Catch:{ all -> 0x0147 }
        r1 = r1.getResources();	 Catch:{ all -> 0x0147 }
        r1 = r1.getDisplayMetrics();	 Catch:{ all -> 0x0147 }
        r1 = r1.density;	 Catch:{ all -> 0x0147 }
        r8 = android.view.View.MeasureSpec.getSize(r8);	 Catch:{ all -> 0x0147 }
        r2 = r7.zzaci;	 Catch:{ all -> 0x0147 }
        r3 = -1;
        if (r2 == r3) goto L_0x006b;
    L_0x0064:
        r9 = r7.zzaci;	 Catch:{ all -> 0x0147 }
        r9 = (float) r9;	 Catch:{ all -> 0x0147 }
        r9 = r9 * r1;
        r9 = (int) r9;	 Catch:{ all -> 0x0147 }
        goto L_0x006f;
    L_0x006b:
        r9 = android.view.View.MeasureSpec.getSize(r9);	 Catch:{ all -> 0x0147 }
    L_0x006f:
        r7.setMeasuredDimension(r8, r9);	 Catch:{ all -> 0x0147 }
        monitor-exit(r0);	 Catch:{ all -> 0x0147 }
        return;
    L_0x0074:
        super.onMeasure(r8, r9);	 Catch:{ all -> 0x0147 }
        monitor-exit(r0);	 Catch:{ all -> 0x0147 }
        return;
    L_0x0079:
        r1 = r7.zzuZ;	 Catch:{ all -> 0x0147 }
        r1 = r1.zzAt;	 Catch:{ all -> 0x0147 }
        if (r1 == 0) goto L_0x0096;
    L_0x007f:
        r8 = new android.util.DisplayMetrics;	 Catch:{ all -> 0x0147 }
        r8.<init>();	 Catch:{ all -> 0x0147 }
        r9 = r7.zzwR;	 Catch:{ all -> 0x0147 }
        r9 = r9.getDefaultDisplay();	 Catch:{ all -> 0x0147 }
        r9.getMetrics(r8);	 Catch:{ all -> 0x0147 }
        r9 = r8.widthPixels;	 Catch:{ all -> 0x0147 }
        r8 = r8.heightPixels;	 Catch:{ all -> 0x0147 }
        r7.setMeasuredDimension(r9, r8);	 Catch:{ all -> 0x0147 }
        monitor-exit(r0);	 Catch:{ all -> 0x0147 }
        return;
    L_0x0096:
        r1 = android.view.View.MeasureSpec.getMode(r8);	 Catch:{ all -> 0x0147 }
        r8 = android.view.View.MeasureSpec.getSize(r8);	 Catch:{ all -> 0x0147 }
        r3 = android.view.View.MeasureSpec.getMode(r9);	 Catch:{ all -> 0x0147 }
        r9 = android.view.View.MeasureSpec.getSize(r9);	 Catch:{ all -> 0x0147 }
        r4 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r5 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        r6 = 2147483647; // 0x7fffffff float:NaN double:1.060997895E-314;
        if (r1 == r5) goto L_0x00b6;
    L_0x00af:
        if (r1 != r4) goto L_0x00b2;
    L_0x00b1:
        goto L_0x00b6;
    L_0x00b2:
        r1 = 2147483647; // 0x7fffffff float:NaN double:1.060997895E-314;
        goto L_0x00b7;
    L_0x00b6:
        r1 = r8;
    L_0x00b7:
        if (r3 == r5) goto L_0x00bb;
    L_0x00b9:
        if (r3 != r4) goto L_0x00bc;
    L_0x00bb:
        r6 = r9;
    L_0x00bc:
        r3 = r7.zzuZ;	 Catch:{ all -> 0x0147 }
        r3 = r3.widthPixels;	 Catch:{ all -> 0x0147 }
        r4 = 8;
        if (r3 > r1) goto L_0x00e0;
    L_0x00c4:
        r1 = r7.zzuZ;	 Catch:{ all -> 0x0147 }
        r1 = r1.heightPixels;	 Catch:{ all -> 0x0147 }
        if (r1 <= r6) goto L_0x00cb;
    L_0x00ca:
        goto L_0x00e0;
    L_0x00cb:
        r8 = r7.getVisibility();	 Catch:{ all -> 0x0147 }
        if (r8 == r4) goto L_0x00d4;
    L_0x00d1:
        r7.setVisibility(r2);	 Catch:{ all -> 0x0147 }
    L_0x00d4:
        r8 = r7.zzuZ;	 Catch:{ all -> 0x0147 }
        r8 = r8.widthPixels;	 Catch:{ all -> 0x0147 }
        r9 = r7.zzuZ;	 Catch:{ all -> 0x0147 }
        r9 = r9.heightPixels;	 Catch:{ all -> 0x0147 }
        r7.setMeasuredDimension(r8, r9);	 Catch:{ all -> 0x0147 }
        goto L_0x0140;
    L_0x00e0:
        r1 = r7.zzabS;	 Catch:{ all -> 0x0147 }
        r1 = r1.getResources();	 Catch:{ all -> 0x0147 }
        r1 = r1.getDisplayMetrics();	 Catch:{ all -> 0x0147 }
        r1 = r1.density;	 Catch:{ all -> 0x0147 }
        r3 = r7.zzuZ;	 Catch:{ all -> 0x0147 }
        r3 = r3.widthPixels;	 Catch:{ all -> 0x0147 }
        r3 = (float) r3;	 Catch:{ all -> 0x0147 }
        r3 = r3 / r1;
        r3 = (int) r3;	 Catch:{ all -> 0x0147 }
        r5 = r7.zzuZ;	 Catch:{ all -> 0x0147 }
        r5 = r5.heightPixels;	 Catch:{ all -> 0x0147 }
        r5 = (float) r5;	 Catch:{ all -> 0x0147 }
        r5 = r5 / r1;
        r5 = (int) r5;	 Catch:{ all -> 0x0147 }
        r8 = (float) r8;	 Catch:{ all -> 0x0147 }
        r8 = r8 / r1;
        r8 = (int) r8;	 Catch:{ all -> 0x0147 }
        r9 = (float) r9;	 Catch:{ all -> 0x0147 }
        r9 = r9 / r1;
        r9 = (int) r9;	 Catch:{ all -> 0x0147 }
        r1 = 103; // 0x67 float:1.44E-43 double:5.1E-322;
        r6 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0147 }
        r6.<init>(r1);	 Catch:{ all -> 0x0147 }
        r1 = "Not enough space to show ad. Needs ";
        r6.append(r1);	 Catch:{ all -> 0x0147 }
        r6.append(r3);	 Catch:{ all -> 0x0147 }
        r1 = "x";
        r6.append(r1);	 Catch:{ all -> 0x0147 }
        r6.append(r5);	 Catch:{ all -> 0x0147 }
        r1 = " dp, but only has ";
        r6.append(r1);	 Catch:{ all -> 0x0147 }
        r6.append(r8);	 Catch:{ all -> 0x0147 }
        r8 = "x";
        r6.append(r8);	 Catch:{ all -> 0x0147 }
        r6.append(r9);	 Catch:{ all -> 0x0147 }
        r8 = " dp.";
        r6.append(r8);	 Catch:{ all -> 0x0147 }
        r8 = r6.toString();	 Catch:{ all -> 0x0147 }
        com.google.android.gms.internal.zzajc.zzaT(r8);	 Catch:{ all -> 0x0147 }
        r8 = r7.getVisibility();	 Catch:{ all -> 0x0147 }
        if (r8 == r4) goto L_0x013d;
    L_0x0139:
        r8 = 4;
        r7.setVisibility(r8);	 Catch:{ all -> 0x0147 }
    L_0x013d:
        r7.setMeasuredDimension(r2, r2);	 Catch:{ all -> 0x0147 }
    L_0x0140:
        monitor-exit(r0);	 Catch:{ all -> 0x0147 }
        return;
    L_0x0142:
        super.onMeasure(r8, r9);	 Catch:{ all -> 0x0147 }
        monitor-exit(r0);	 Catch:{ all -> 0x0147 }
        return;
    L_0x0147:
        r8 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0147 }
        throw r8;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzako.onMeasure(int, int):void");
    }

    public final void onPause() {
        if (!isDestroyed()) {
            try {
                super.onPause();
            } catch (Exception e) {
                zzajc.zzb("Could not pause webview.", e);
            }
        }
    }

    public final void onResume() {
        if (!isDestroyed()) {
            try {
                super.onResume();
            } catch (Exception e) {
                zzajc.zzb("Could not resume webview.", e);
            }
        }
    }

    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.zzabU.zziP()) {
            synchronized (this.mLock) {
                if (this.zzacg != null) {
                    this.zzacg.zzc(motionEvent);
                }
            }
        } else if (this.zzIc != null) {
            this.zzIc.zza(motionEvent);
        }
        return isDestroyed() ? false : super.onTouchEvent(motionEvent);
    }

    public final void setContext(Context context) {
        this.zzabS.setBaseContext(context);
        this.zzwC.zzi(this.zzabS.zzis());
    }

    public final void setOnClickListener(OnClickListener onClickListener) {
        this.zzacm = new WeakReference(onClickListener);
        super.setOnClickListener(onClickListener);
    }

    public final void setRequestedOrientation(int i) {
        synchronized (this.mLock) {
            this.zzaca = i;
            if (this.zzabV != null) {
                this.zzabV.setRequestedOrientation(this.zzaca);
            }
        }
    }

    public final void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof zzakb) {
            this.zzabU = (zzakb) webViewClient;
        }
    }

    public final void stopLoading() {
        if (!isDestroyed()) {
            try {
                super.stopLoading();
            } catch (Exception e) {
                zzajc.zzb("Could not stop loading webview.", e);
            }
        }
    }

    public final void zzA(int i) {
        if (i == 0) {
            zzmu.zza(this.zzacl.zzdR(), this.zzQy, "aebb2");
        }
        zzjc();
        if (this.zzacl.zzdR() != null) {
            this.zzacl.zzdR().zzh("close_type", String.valueOf(i));
        }
        Map hashMap = new HashMap(2);
        hashMap.put("closetype", String.valueOf(i));
        hashMap.put("version", this.zztW.zzaP);
        zza("onhide", hashMap);
    }

    public final void zzA(boolean z) {
        synchronized (this.mLock) {
            Object obj = z != this.zzabY ? 1 : null;
            this.zzabY = z;
            zzjd();
            if (obj != null) {
                new zzwu(this).zzap(z ? "expanded" : "default");
            }
        }
    }

    public final void zzB(boolean z) {
        synchronized (this.mLock) {
            if (this.zzabV != null) {
                this.zzabV.zza(this.zzabU.zzcn(), z);
            } else {
                this.zzabW = z;
            }
        }
    }

    public final void zzC(boolean z) {
        synchronized (this.mLock) {
            this.zzacb = z;
        }
    }

    public final void zzD(boolean z) {
        synchronized (this.mLock) {
            this.zzach += z ? 1 : -1;
            if (this.zzach <= 0 && this.zzabV != null) {
                this.zzabV.zzfR();
            }
        }
    }

    public final void zza(Context context, zziv zziv, zznb zznb) {
        synchronized (this.mLock) {
            this.zzwC.zzih();
            setContext(context);
            this.zzabV = null;
            this.zzuZ = zziv;
            this.zzabY = false;
            this.zzabW = false;
            this.zzQx = "";
            this.zzaca = -1;
            zzbs.zzbB();
            zzahe.zzl(this);
            loadUrl("about:blank");
            this.zzabU.reset();
            setOnTouchListener(null);
            setOnClickListener(null);
            this.zzacb = true;
            this.zzacc = false;
            this.zzacd = null;
            zzd(zznb);
            this.zzace = false;
            this.zzach = 0;
            zzbs.zzbW();
            zzsa.zze(this);
            zzjf();
        }
    }

    public final void zza(zzaks zzaks) {
        synchronized (this.mLock) {
            if (this.zzacd != null) {
                zzajc.e("Attempt to create multiple AdWebViewVideoControllers.");
                return;
            }
            this.zzacd = zzaks;
        }
    }

    public final void zza(zzgh zzgh) {
        synchronized (this.mLock) {
            this.zzace = zzgh.zzxS;
        }
        zzF(zzgh.zzxS);
    }

    public final void zza(zziv zziv) {
        synchronized (this.mLock) {
            this.zzuZ = zziv;
            requestLayout();
        }
    }

    public final void zza(String str, zzrd zzrd) {
        if (this.zzabU != null) {
            this.zzabU.zza(str, zzrd);
        }
    }

    public final void zza(String str, Map<String, ?> map) {
        try {
            zzb(str, zzbs.zzbz().zzj(map));
        } catch (JSONException unused) {
            zzajc.zzaT("Could not convert parameters to JSON.");
        }
    }

    public final void zza(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        zzi(str, jSONObject.toString());
    }

    public final void zzaJ() {
        synchronized (this.mLock) {
            this.zzacc = true;
            if (this.zzabT != null) {
                this.zzabT.zzaJ();
            }
        }
    }

    public final void zzaK() {
        synchronized (this.mLock) {
            this.zzacc = false;
            if (this.zzabT != null) {
                this.zzabT.zzaK();
            }
        }
    }

    public final void zzaU(String str) {
        synchronized (this.mLock) {
            try {
                super.loadUrl(str);
            } catch (Throwable th) {
                zzbs.zzbD().zza(th, "AdWebViewImpl.loadUrlUnsafe");
                zzajc.zzc("Could not call loadUrl. ", th);
            }
        }
    }

    public final void zzaV(String str) {
        synchronized (this.mLock) {
            if (str == null) {
                try {
                    str = "";
                } catch (Throwable th) {
                }
            }
            this.zzQx = str;
        }
    }

    public final zzv zzak() {
        return this.zzsS;
    }

    public final zziv zzam() {
        zziv zziv;
        synchronized (this.mLock) {
            zziv = this.zzuZ;
        }
        return zziv;
    }

    public final void zzb(zzm zzm) {
        synchronized (this.mLock) {
            this.zzabV = zzm;
        }
    }

    public final void zzb(zznw zznw) {
        synchronized (this.mLock) {
            this.zzacg = zznw;
        }
    }

    public final void zzb(String str, zzrd zzrd) {
        if (this.zzabU != null) {
            this.zzabU.zzb(str, zzrd);
        }
    }

    public final void zzb(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String jSONObject2 = jSONObject.toString();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("(window.AFMA_ReceiveMessage || function() {})('");
        stringBuilder.append(str);
        stringBuilder.append("'");
        stringBuilder.append(",");
        stringBuilder.append(jSONObject2);
        stringBuilder.append(");");
        str = "Dispatching AFMA event: ";
        jSONObject2 = String.valueOf(stringBuilder.toString());
        zzajc.zzaC(jSONObject2.length() != 0 ? str.concat(jSONObject2) : new String(str));
        zzaX(stringBuilder.toString());
    }

    public final void zzc(zzm zzm) {
        synchronized (this.mLock) {
            this.zzacn = zzm;
        }
    }

    public final void zzfP() {
        if (this.zzacj == null) {
            zzmu.zza(this.zzacl.zzdR(), this.zzQy, "aes2");
            this.zzacj = zzmu.zzb(this.zzacl.zzdR());
            this.zzacl.zza("native:view_show", this.zzacj);
        }
        Map hashMap = new HashMap(1);
        hashMap.put("version", this.zztW.zzaP);
        zza("onshow", hashMap);
    }

    public final void zzi(String str, String str2) {
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 3) + String.valueOf(str2).length());
        stringBuilder.append(str);
        stringBuilder.append("(");
        stringBuilder.append(str2);
        stringBuilder.append(");");
        zzaX(stringBuilder.toString());
    }

    public final boolean zziA() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzabY;
        }
        return z;
    }

    public final void zziB() {
        synchronized (this.mLock) {
            zzafr.v("Destroying WebView!");
            zzhI();
            zzagz.zzZr.post(new zzakq(this));
        }
    }

    public final boolean zziC() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzacb;
        }
        return z;
    }

    public final boolean zziD() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzacc;
        }
        return z;
    }

    public final zzajz zziE() {
        return null;
    }

    public final zzmz zziF() {
        return this.zzQy;
    }

    public final zzna zziG() {
        return this.zzacl;
    }

    public final zzaks zziH() {
        zzaks zzaks;
        synchronized (this.mLock) {
            zzaks = this.zzacd;
        }
        return zzaks;
    }

    public final boolean zziI() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzach > 0;
        }
        return z;
    }

    public final void zziJ() {
        this.zzwC.zzig();
    }

    public final void zziK() {
        if (this.zzack == null) {
            this.zzack = zzmu.zzb(this.zzacl.zzdR());
            this.zzacl.zza("native:view_load", this.zzack);
        }
    }

    public final OnClickListener zziL() {
        return (OnClickListener) this.zzacm.get();
    }

    public final zznw zziM() {
        zznw zznw;
        synchronized (this.mLock) {
            zznw = this.zzacg;
        }
        return zznw;
    }

    public final void zziN() {
        setBackgroundColor(0);
    }

    public final void zziq() {
        zzjc();
        Map hashMap = new HashMap(1);
        hashMap.put("version", this.zztW.zzaP);
        zza("onhide", hashMap);
    }

    public final void zzir() {
        Map hashMap = new HashMap(3);
        zzbs.zzbz();
        hashMap.put("app_muted", String.valueOf(zzagz.zzbh()));
        zzbs.zzbz();
        hashMap.put("app_volume", String.valueOf(zzagz.zzbf()));
        zzbs.zzbz();
        hashMap.put("device_volume", String.valueOf(zzagz.zzM(getContext())));
        zza(MediaRouteProviderProtocol.CLIENT_DATA_VOLUME, hashMap);
    }

    public final Activity zzis() {
        return this.zzabS.zzis();
    }

    public final Context zzit() {
        return this.zzabS.zzit();
    }

    public final zzm zziu() {
        zzm zzm;
        synchronized (this.mLock) {
            zzm = this.zzabV;
        }
        return zzm;
    }

    public final zzm zziv() {
        zzm zzm;
        synchronized (this.mLock) {
            zzm = this.zzacn;
        }
        return zzm;
    }

    public final zzakb zziw() {
        return this.zzabU;
    }

    public final boolean zzix() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzabW;
        }
        return z;
    }

    public final zzcu zziy() {
        return this.zzIc;
    }

    public final zzaje zziz() {
        return this.zztW;
    }
}
