package com.google.android.gms.internal;

import android.content.Context;
import android.webkit.WebSettings;
import java.util.concurrent.Callable;

final class zzahi implements Callable<Boolean> {
    private /* synthetic */ WebSettings zzZA;
    private /* synthetic */ Context zztF;

    zzahi(zzahh zzahh, Context context, WebSettings webSettings) {
        this.zztF = context;
        this.zzZA = webSettings;
    }

    public final /* synthetic */ Object call() throws Exception {
        if (this.zztF.getCacheDir() != null) {
            this.zzZA.setAppCachePath(this.zztF.getCacheDir().getAbsolutePath());
            this.zzZA.setAppCacheMaxSize(0);
            this.zzZA.setAppCacheEnabled(true);
        }
        this.zzZA.setDatabasePath(this.zztF.getDatabasePath("com.google.android.gms.ads.db").getAbsolutePath());
        this.zzZA.setDatabaseEnabled(true);
        this.zzZA.setDomStorageEnabled(true);
        this.zzZA.setDisplayZoomControls(false);
        this.zzZA.setBuiltInZoomControls(true);
        this.zzZA.setSupportZoom(true);
        this.zzZA.setAllowContentAccess(false);
        return Boolean.valueOf(true);
    }
}
