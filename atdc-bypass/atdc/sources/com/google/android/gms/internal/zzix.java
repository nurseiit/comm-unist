package com.google.android.gms.internal;

import com.google.android.gms.ads.doubleclick.AppEventListener;

@zzzn
public final class zzix extends zzkf {
    private final AppEventListener zzsw;

    public zzix(AppEventListener appEventListener) {
        this.zzsw = appEventListener;
    }

    public final AppEventListener getAppEventListener() {
        return this.zzsw;
    }

    public final void onAppEvent(String str, String str2) {
        this.zzsw.onAppEvent(str, str2);
    }
}
