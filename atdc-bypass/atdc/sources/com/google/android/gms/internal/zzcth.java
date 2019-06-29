package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Api.zze;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzq;

final class zzcth extends zza<zzctu, zzctl> {
    zzcth() {
    }

    public final /* synthetic */ zze zza(Context context, Looper looper, zzq zzq, Object obj, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        zzctl zzctl = (zzctl) obj;
        if (zzctl == null) {
            zzctl = zzctl.zzbCM;
        }
        return new zzctu(context, looper, true, zzq, zzctl, connectionCallbacks, onConnectionFailedListener);
    }
}
