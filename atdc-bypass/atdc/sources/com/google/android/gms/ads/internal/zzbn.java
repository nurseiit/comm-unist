package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzmo;

final class zzbn extends WebViewClient {
    private /* synthetic */ zzbm zzvf;

    zzbn(zzbm zzbm) {
        this.zzvf = zzbm;
    }

    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        if (this.zzvf.zztK != null) {
            try {
                this.zzvf.zztK.onAdFailedToLoad(0);
            } catch (RemoteException e) {
                zzajc.zzc("Could not call AdListener.onAdFailedToLoad().", e);
            }
        }
    }

    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (str.startsWith(this.zzvf.zzbq())) {
            return false;
        }
        if (str.startsWith((String) zzbs.zzbL().zzd(zzmo.zzFS))) {
            if (this.zzvf.zztK != null) {
                try {
                    this.zzvf.zztK.onAdFailedToLoad(3);
                } catch (RemoteException e) {
                    zzajc.zzc("Could not call AdListener.onAdFailedToLoad().", e);
                }
            }
            this.zzvf.zzf(0);
            return true;
        }
        if (str.startsWith((String) zzbs.zzbL().zzd(zzmo.zzFT))) {
            if (this.zzvf.zztK != null) {
                try {
                    this.zzvf.zztK.onAdFailedToLoad(0);
                } catch (RemoteException e2) {
                    zzajc.zzc("Could not call AdListener.onAdFailedToLoad().", e2);
                }
            }
            this.zzvf.zzf(0);
            return true;
        }
        if (str.startsWith((String) zzbs.zzbL().zzd(zzmo.zzFU))) {
            if (this.zzvf.zztK != null) {
                try {
                    this.zzvf.zztK.onAdLoaded();
                } catch (RemoteException e22) {
                    zzajc.zzc("Could not call AdListener.onAdLoaded().", e22);
                }
            }
            this.zzvf.zzf(this.zzvf.zzv(str));
            return true;
        } else if (str.startsWith("gmsg://")) {
            return true;
        } else {
            if (this.zzvf.zztK != null) {
                try {
                    this.zzvf.zztK.onAdLeftApplication();
                } catch (RemoteException e222) {
                    zzajc.zzc("Could not call AdListener.onAdLeftApplication().", e222);
                }
            }
            this.zzvf.zzx(this.zzvf.zzw(str));
            return true;
        }
    }
}
