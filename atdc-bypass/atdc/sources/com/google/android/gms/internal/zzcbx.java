package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.common.internal.zzz;

public class zzcbx extends zzz<zzccz> {
    private final String zzbiA;
    protected final zzcdt<zzccz> zzbiB = new zzcby(this);

    public zzcbx(Context context, Looper looper, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener, String str, zzq zzq) {
        super(context, looper, 23, zzq, connectionCallbacks, onConnectionFailedListener);
        this.zzbiA = str;
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ IInterface zzd(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        return queryLocalInterface instanceof zzccz ? (zzccz) queryLocalInterface : new zzcda(iBinder);
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzdb() {
        return "com.google.android.location.internal.GoogleLocationManagerService.START";
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzdc() {
        return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
    }

    /* Access modifiers changed, original: protected|final */
    public final Bundle zzmo() {
        Bundle bundle = new Bundle();
        bundle.putString("client_name", this.zzbiA);
        return bundle;
    }
}
