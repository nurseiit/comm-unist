package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.zzf;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzq;

public final class zzbut extends zzbun<zzbwj> {
    public static final Api<NoOptions> API = new Api("Fitness.CONFIG_API", new zzbuv(), zzajR);
    private static zzf<zzbut> zzajR = new zzf();

    public zzbut(Context context, Looper looper, zzq zzq, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 60, connectionCallbacks, onConnectionFailedListener, zzq);
    }

    public final /* synthetic */ IInterface zzd(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.fitness.internal.IGoogleFitConfigApi");
        return queryLocalInterface instanceof zzbwj ? (zzbwj) queryLocalInterface : new zzbwk(iBinder);
    }

    public final String zzdb() {
        return "com.google.android.gms.fitness.ConfigApi";
    }

    public final String zzdc() {
        return "com.google.android.gms.fitness.internal.IGoogleFitConfigApi";
    }
}
