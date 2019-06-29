package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.zzv;
import java.util.Map;
import org.json.JSONObject;

@zzzn
final class zzakn extends FrameLayout implements zzaka {
    private static final int zzOF = Color.argb(0, 0, 0, 0);
    private final zzaka zzabQ;
    private final zzajz zzabR;

    public zzakn(zzaka zzaka) {
        super(zzaka.getContext());
        this.zzabQ = zzaka;
        this.zzabR = new zzajz(zzaka.zzit(), this, this);
        zzakb zziw = this.zzabQ.zziw();
        if (zziw != null) {
            zziw.zzJH = this;
        }
        addView(this.zzabQ.getView());
    }

    public final void destroy() {
        this.zzabQ.destroy();
    }

    public final String getRequestId() {
        return this.zzabQ.getRequestId();
    }

    public final int getRequestedOrientation() {
        return this.zzabQ.getRequestedOrientation();
    }

    public final View getView() {
        return this;
    }

    public final WebView getWebView() {
        return this.zzabQ.getWebView();
    }

    public final boolean isDestroyed() {
        return this.zzabQ.isDestroyed();
    }

    public final void loadData(String str, String str2, String str3) {
        this.zzabQ.loadData(str, str2, str3);
    }

    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.zzabQ.loadDataWithBaseURL(str, str2, str3, str4, str5);
    }

    public final void loadUrl(String str) {
        this.zzabQ.loadUrl(str);
    }

    public final void onPause() {
        this.zzabR.onPause();
        this.zzabQ.onPause();
    }

    public final void onResume() {
        this.zzabQ.onResume();
    }

    public final void setContext(Context context) {
        this.zzabQ.setContext(context);
    }

    public final void setOnClickListener(OnClickListener onClickListener) {
        this.zzabQ.setOnClickListener(onClickListener);
    }

    public final void setOnTouchListener(OnTouchListener onTouchListener) {
        this.zzabQ.setOnTouchListener(onTouchListener);
    }

    public final void setRequestedOrientation(int i) {
        this.zzabQ.setRequestedOrientation(i);
    }

    public final void setWebChromeClient(WebChromeClient webChromeClient) {
        this.zzabQ.setWebChromeClient(webChromeClient);
    }

    public final void setWebViewClient(WebViewClient webViewClient) {
        this.zzabQ.setWebViewClient(webViewClient);
    }

    public final void stopLoading() {
        this.zzabQ.stopLoading();
    }

    public final void zzA(int i) {
        this.zzabQ.zzA(i);
    }

    public final void zzA(boolean z) {
        this.zzabQ.zzA(z);
    }

    public final void zzB(boolean z) {
        this.zzabQ.zzB(z);
    }

    public final void zzC(boolean z) {
        this.zzabQ.zzC(z);
    }

    public final void zzD(boolean z) {
        this.zzabQ.zzD(z);
    }

    public final void zza(Context context, zziv zziv, zznb zznb) {
        this.zzabR.onDestroy();
        this.zzabQ.zza(context, zziv, zznb);
    }

    public final void zza(zzaks zzaks) {
        this.zzabQ.zza(zzaks);
    }

    public final void zza(zzgh zzgh) {
        this.zzabQ.zza(zzgh);
    }

    public final void zza(zziv zziv) {
        this.zzabQ.zza(zziv);
    }

    public final void zza(String str, zzrd zzrd) {
        this.zzabQ.zza(str, zzrd);
    }

    public final void zza(String str, Map<String, ?> map) {
        this.zzabQ.zza(str, (Map) map);
    }

    public final void zza(String str, JSONObject jSONObject) {
        this.zzabQ.zza(str, jSONObject);
    }

    public final void zzaJ() {
        this.zzabQ.zzaJ();
    }

    public final void zzaK() {
        this.zzabQ.zzaK();
    }

    public final void zzaU(String str) {
        this.zzabQ.zzaU(str);
    }

    public final void zzaV(String str) {
        this.zzabQ.zzaV(str);
    }

    public final zzv zzak() {
        return this.zzabQ.zzak();
    }

    public final zziv zzam() {
        return this.zzabQ.zzam();
    }

    public final void zzb(zzm zzm) {
        this.zzabQ.zzb(zzm);
    }

    public final void zzb(@Nullable zznw zznw) {
        this.zzabQ.zzb(zznw);
    }

    public final void zzb(String str, zzrd zzrd) {
        this.zzabQ.zzb(str, zzrd);
    }

    public final void zzb(String str, JSONObject jSONObject) {
        this.zzabQ.zzb(str, jSONObject);
    }

    public final void zzc(zzm zzm) {
        this.zzabQ.zzc(zzm);
    }

    public final void zzfP() {
        this.zzabQ.zzfP();
    }

    public final void zzi(String str, String str2) {
        this.zzabQ.zzi(str, str2);
    }

    public final boolean zziA() {
        return this.zzabQ.zziA();
    }

    public final void zziB() {
        this.zzabR.onDestroy();
        this.zzabQ.zziB();
    }

    public final boolean zziC() {
        return this.zzabQ.zziC();
    }

    public final boolean zziD() {
        return this.zzabQ.zziD();
    }

    public final zzajz zziE() {
        return this.zzabR;
    }

    public final zzmz zziF() {
        return this.zzabQ.zziF();
    }

    public final zzna zziG() {
        return this.zzabQ.zziG();
    }

    public final zzaks zziH() {
        return this.zzabQ.zziH();
    }

    public final boolean zziI() {
        return this.zzabQ.zziI();
    }

    public final void zziJ() {
        this.zzabQ.zziJ();
    }

    public final void zziK() {
        this.zzabQ.zziK();
    }

    public final OnClickListener zziL() {
        return this.zzabQ.zziL();
    }

    @Nullable
    public final zznw zziM() {
        return this.zzabQ.zziM();
    }

    public final void zziN() {
        setBackgroundColor(zzOF);
        this.zzabQ.setBackgroundColor(zzOF);
    }

    public final void zziq() {
        this.zzabQ.zziq();
    }

    public final void zzir() {
        this.zzabQ.zzir();
    }

    public final Activity zzis() {
        return this.zzabQ.zzis();
    }

    public final Context zzit() {
        return this.zzabQ.zzit();
    }

    public final zzm zziu() {
        return this.zzabQ.zziu();
    }

    public final zzm zziv() {
        return this.zzabQ.zziv();
    }

    public final zzakb zziw() {
        return this.zzabQ.zziw();
    }

    public final boolean zzix() {
        return this.zzabQ.zzix();
    }

    public final zzcu zziy() {
        return this.zzabQ.zziy();
    }

    public final zzaje zziz() {
        return this.zzabQ.zziz();
    }
}
