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

public final class zzbvg extends zzbun<zzbwr> {
    public static final Api<NoOptions> API = new Api("Fitness.RECORDING_API", new zzbvi(), zzajR);
    private static zzf<zzbvg> zzajR = new zzf();

    public zzbvg(Context context, Looper looper, zzq zzq, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 56, connectionCallbacks, onConnectionFailedListener, zzq);
    }

    public final /* synthetic */ IInterface zzd(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.fitness.internal.IGoogleFitRecordingApi");
        return queryLocalInterface instanceof zzbwr ? (zzbwr) queryLocalInterface : new zzbws(iBinder);
    }

    public final String zzdb() {
        return "com.google.android.gms.fitness.RecordingApi";
    }

    public final String zzdc() {
        return "com.google.android.gms.fitness.internal.IGoogleFitRecordingApi";
    }
}
