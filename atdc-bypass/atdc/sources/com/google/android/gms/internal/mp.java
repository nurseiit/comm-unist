package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.measurement.AppMeasurement.Event;
import com.google.android.gms.measurement.AppMeasurement.Param;
import com.google.firebase.crash.FirebaseCrash.zza;
import java.util.concurrent.ExecutorService;

public final class mp {
    private final AppMeasurement zzbYo;

    private mp(AppMeasurement appMeasurement) {
        this.zzbYo = appMeasurement;
    }

    @Nullable
    public static mp zzbE(Context context) {
        try {
            return new mp(AppMeasurement.getInstance(context));
        } catch (NoClassDefFoundError e) {
            String valueOf = String.valueOf(e);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 50);
            stringBuilder.append("Unable to log event, missing measurement library: ");
            stringBuilder.append(valueOf);
            Log.w("FirebaseCrashAnalytics", stringBuilder.toString());
            return null;
        }
    }

    public final void zza(@NonNull Context context, @NonNull ExecutorService executorService, @Nullable zza zza) {
        this.zzbYo.registerOnMeasurementEventListener(new mo(context, executorService, zza));
    }

    public final void zza(boolean z, long j) {
        String str;
        int i;
        Bundle bundle = new Bundle();
        if (z) {
            str = Param.FATAL;
            i = 1;
        } else {
            str = Param.FATAL;
            i = 0;
        }
        bundle.putInt(str, i);
        bundle.putLong(Param.TIMESTAMP, j);
        this.zzbYo.logEventInternal(AppMeasurement.CRASH_ORIGIN, Event.APP_EXCEPTION, bundle);
    }
}
