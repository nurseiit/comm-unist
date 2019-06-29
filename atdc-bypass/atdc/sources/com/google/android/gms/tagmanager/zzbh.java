package com.google.android.gms.tagmanager;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.measurement.AppMeasurement.EventInterceptor;

final class zzbh implements EventInterceptor {
    private /* synthetic */ zzck zzbEF;

    zzbh(zzbg zzbg, zzck zzck) {
        this.zzbEF = zzck;
    }

    public final void interceptEvent(String str, String str2, Bundle bundle, long j) {
        try {
            this.zzbEF.interceptEvent(str, str2, bundle, j);
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }
}
