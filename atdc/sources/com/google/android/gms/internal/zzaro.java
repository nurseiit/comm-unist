package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.support.annotation.Nullable;
import com.google.android.gms.auth.api.Auth.AuthCredentialsOptions;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.common.internal.zzz;

public final class zzaro extends zzz<zzart> {
    @Nullable
    private final AuthCredentialsOptions zzalC;

    public zzaro(Context context, Looper looper, zzq zzq, AuthCredentialsOptions authCredentialsOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 68, zzq, connectionCallbacks, onConnectionFailedListener);
        this.zzalC = authCredentialsOptions;
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ IInterface zzd(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
        return queryLocalInterface instanceof zzart ? (zzart) queryLocalInterface : new zzaru(iBinder);
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzdb() {
        return "com.google.android.gms.auth.api.credentials.service.START";
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzdc() {
        return "com.google.android.gms.auth.api.credentials.internal.ICredentialsService";
    }

    /* Access modifiers changed, original: protected|final */
    public final Bundle zzmo() {
        return this.zzalC == null ? new Bundle() : this.zzalC.zzmo();
    }

    /* Access modifiers changed, original: final */
    public final AuthCredentialsOptions zzmu() {
        return this.zzalC;
    }
}
