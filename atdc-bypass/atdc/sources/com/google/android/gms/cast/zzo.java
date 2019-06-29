package com.google.android.gms.cast;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.cast.CastRemoteDisplay.CastRemoteDisplayOptions;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Api.zze;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.internal.zzazf;

final class zzo extends zza<zzazf, CastRemoteDisplayOptions> {
    zzo() {
    }

    public final /* synthetic */ zze zza(Context context, Looper looper, zzq zzq, Object obj, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        CastRemoteDisplayOptions castRemoteDisplayOptions = (CastRemoteDisplayOptions) obj;
        Bundle bundle = new Bundle();
        bundle.putInt("configuration", castRemoteDisplayOptions.zzapn);
        return new zzazf(context, looper, zzq, castRemoteDisplayOptions.zzaoU, bundle, castRemoteDisplayOptions.zzapm, connectionCallbacks, onConnectionFailedListener);
    }
}
