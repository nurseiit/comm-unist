package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.auth.api.zzd;
import com.google.android.gms.auth.api.zzf;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.common.internal.zzz;

public final class zzary extends zzz<zzasb> {
    private final Bundle zzakQ;

    public zzary(Context context, Looper looper, zzq zzq, zzf zzf, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 16, zzq, connectionCallbacks, onConnectionFailedListener);
        this.zzakQ = zzf == null ? new Bundle() : zzf.zzms();
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ IInterface zzd(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.internal.IAuthService");
        return queryLocalInterface instanceof zzasb ? (zzasb) queryLocalInterface : new zzasc(iBinder);
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzdb() {
        return "com.google.android.gms.auth.service.START";
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzdc() {
        return "com.google.android.gms.auth.api.internal.IAuthService";
    }

    /* Access modifiers changed, original: protected|final */
    public final Bundle zzmo() {
        return this.zzakQ;
    }

    public final boolean zzmv() {
        zzq zzry = zzry();
        return (TextUtils.isEmpty(zzry.getAccountName()) || zzry.zzc(zzd.API).isEmpty()) ? false : true;
    }
}
