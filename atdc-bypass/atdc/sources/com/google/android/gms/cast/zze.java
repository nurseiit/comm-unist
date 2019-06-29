package com.google.android.gms.cast;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.cast.Cast.CastOptions;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.internal.zzaxx;

final class zze extends zza<zzaxx, CastOptions> {
    zze() {
    }

    public final /* synthetic */ com.google.android.gms.common.api.Api.zze zza(Context context, Looper looper, zzq zzq, Object obj, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        Object obj2 = (CastOptions) obj;
        zzbo.zzb(obj2, (Object) "Setting the API options is required.");
        return new zzaxx(context, looper, zzq, obj2.zzaoU, (long) obj2.zzaoW, obj2.zzaoV, obj2.extras, connectionCallbacks, onConnectionFailedListener);
    }
}
