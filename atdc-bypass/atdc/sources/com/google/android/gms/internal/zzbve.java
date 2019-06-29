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

public final class zzbve extends zzbun<zzbwp> {
    public static final Api<NoOptions> API = new Api("Fitness.INTERNAL_API", new zzbvf(), zzajR);
    private static zzf<zzbve> zzajR = new zzf();

    public zzbve(Context context, Looper looper, zzq zzq, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 61, connectionCallbacks, onConnectionFailedListener, zzq);
    }

    public final /* synthetic */ IInterface zzd(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.fitness.internal.IGoogleFitInternalApi");
        return queryLocalInterface instanceof zzbwp ? (zzbwp) queryLocalInterface : new zzbwq(iBinder);
    }

    public final String zzdb() {
        return "com.google.android.gms.fitness.InternalApi";
    }

    public final String zzdc() {
        return "com.google.android.gms.fitness.internal.IGoogleFitInternalApi";
    }
}
