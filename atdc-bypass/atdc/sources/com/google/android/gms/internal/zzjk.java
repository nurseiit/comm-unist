package com.google.android.gms.internal;

import com.google.android.gms.ads.AdListener;

@zzzn
public class zzjk extends AdListener {
    private final Object lock = new Object();
    private AdListener zzAQ;

    public void onAdClosed() {
        synchronized (this.lock) {
            if (this.zzAQ != null) {
                this.zzAQ.onAdClosed();
            }
        }
    }

    public void onAdFailedToLoad(int i) {
        synchronized (this.lock) {
            if (this.zzAQ != null) {
                this.zzAQ.onAdFailedToLoad(i);
            }
        }
    }

    public void onAdLeftApplication() {
        synchronized (this.lock) {
            if (this.zzAQ != null) {
                this.zzAQ.onAdLeftApplication();
            }
        }
    }

    public void onAdLoaded() {
        synchronized (this.lock) {
            if (this.zzAQ != null) {
                this.zzAQ.onAdLoaded();
            }
        }
    }

    public void onAdOpened() {
        synchronized (this.lock) {
            if (this.zzAQ != null) {
                this.zzAQ.onAdOpened();
            }
        }
    }

    public final void zza(AdListener adListener) {
        synchronized (this.lock) {
            this.zzAQ = adListener;
        }
    }
}
