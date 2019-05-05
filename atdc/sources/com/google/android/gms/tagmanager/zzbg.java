package com.google.android.gms.tagmanager;

import android.os.Bundle;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.Map;

final class zzbg extends zzco {
    private /* synthetic */ AppMeasurement zzbEE;

    zzbg(AppMeasurement appMeasurement) {
        this.zzbEE = appMeasurement;
    }

    public final void logEventInternalNoInterceptor(String str, String str2, Bundle bundle, long j) {
        this.zzbEE.logEventInternalNoInterceptor(str, str2, bundle, j);
    }

    public final Map<String, Object> zzBh() {
        return this.zzbEE.getUserProperties(true);
    }

    public final void zza(zzch zzch) {
        this.zzbEE.registerOnMeasurementEventListener(new zzbi(this, zzch));
    }

    public final void zza(zzck zzck) {
        this.zzbEE.setEventInterceptor(new zzbh(this, zzck));
    }
}
