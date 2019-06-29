package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.formats.OnPublisherAdViewLoadedListener;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;

public final class zzqh extends zzqa {
    private final OnPublisherAdViewLoadedListener zzIP;

    public zzqh(OnPublisherAdViewLoadedListener onPublisherAdViewLoadedListener) {
        this.zzIP = onPublisherAdViewLoadedListener;
    }

    public final void zza(zzjz zzjz, IObjectWrapper iObjectWrapper) {
        if (zzjz != null && iObjectWrapper != null) {
            PublisherAdView publisherAdView = new PublisherAdView((Context) zzn.zzE(iObjectWrapper));
            AppEventListener appEventListener = null;
            try {
                if (zzjz.zzay() instanceof zzio) {
                    zzio zzio = (zzio) zzjz.zzay();
                    publisherAdView.setAdListener(zzio != null ? zzio.getAdListener() : null);
                }
            } catch (RemoteException e) {
                zzajc.zzc("Failed to get ad listener.", e);
            }
            try {
                if (zzjz.zzax() instanceof zzix) {
                    zzix zzix = (zzix) zzjz.zzax();
                    if (zzix != null) {
                        appEventListener = zzix.getAppEventListener();
                    }
                    publisherAdView.setAppEventListener(appEventListener);
                }
            } catch (RemoteException e2) {
                zzajc.zzc("Failed to get app event listener.", e2);
            }
            zzaiy.zzaaH.post(new zzqi(this, publisherAdView, zzjz));
        }
    }
}
