package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.js.zzai;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.zzbl;
import com.google.android.gms.ads.internal.zzv;
import java.util.Map;
import org.json.JSONObject;

@zzzn
public interface zzaka extends zzai, zzbl, zzgi {
    void destroy();

    Context getContext();

    int getHeight();

    LayoutParams getLayoutParams();

    void getLocationOnScreen(int[] iArr);

    int getMeasuredHeight();

    int getMeasuredWidth();

    ViewParent getParent();

    String getRequestId();

    int getRequestedOrientation();

    View getView();

    WebView getWebView();

    int getWidth();

    boolean isDestroyed();

    void loadData(String str, String str2, String str3);

    void loadDataWithBaseURL(String str, String str2, String str3, String str4, @Nullable String str5);

    void loadUrl(String str);

    void measure(int i, int i2);

    void onPause();

    void onResume();

    void setBackgroundColor(int i);

    void setContext(Context context);

    void setOnClickListener(OnClickListener onClickListener);

    void setOnTouchListener(OnTouchListener onTouchListener);

    void setRequestedOrientation(int i);

    void setWebChromeClient(WebChromeClient webChromeClient);

    void setWebViewClient(WebViewClient webViewClient);

    void stopLoading();

    void zzA(int i);

    void zzA(boolean z);

    void zzB(boolean z);

    void zzC(boolean z);

    void zzD(boolean z);

    void zza(Context context, zziv zziv, zznb zznb);

    void zza(zzaks zzaks);

    void zza(zziv zziv);

    void zza(String str, Map<String, ?> map);

    void zza(String str, JSONObject jSONObject);

    void zzaU(String str);

    void zzaV(String str);

    zzv zzak();

    zziv zzam();

    void zzb(zzm zzm);

    void zzb(zznw zznw);

    void zzc(zzm zzm);

    void zzfP();

    void zzi(String str, String str2);

    boolean zziA();

    void zziB();

    boolean zziC();

    boolean zziD();

    @Nullable
    zzajz zziE();

    @Nullable
    zzmz zziF();

    zzna zziG();

    @Nullable
    zzaks zziH();

    boolean zziI();

    void zziJ();

    void zziK();

    @Nullable
    OnClickListener zziL();

    zznw zziM();

    void zziN();

    void zziq();

    void zzir();

    Activity zzis();

    Context zzit();

    zzm zziu();

    zzm zziv();

    @Nullable
    zzakb zziw();

    boolean zzix();

    zzcu zziy();

    zzaje zziz();
}
