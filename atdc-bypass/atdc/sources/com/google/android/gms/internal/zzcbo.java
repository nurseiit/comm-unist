package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.common.internal.zzz;

public final class zzcbo extends zzz<zzcbl> {
    public zzcbo(Context context, Looper looper, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 121, zzq.zzaA(context), connectionCallbacks, onConnectionFailedListener);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ IInterface zzd(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.instantapps.internal.IInstantAppsService");
        return queryLocalInterface instanceof zzcbl ? (zzcbl) queryLocalInterface : new zzcbm(iBinder);
    }

    /* Access modifiers changed, original: protected|final */
    @NonNull
    public final String zzdb() {
        return "com.google.android.gms.instantapps.START";
    }

    /* Access modifiers changed, original: protected|final */
    @NonNull
    public final String zzdc() {
        return "com.google.android.gms.instantapps.internal.IInstantAppsService";
    }
}
