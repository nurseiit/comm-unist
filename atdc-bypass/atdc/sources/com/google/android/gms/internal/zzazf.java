package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IBinder.DeathRecipient;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.CastRemoteDisplay.CastRemoteDisplaySessionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.common.internal.zzz;

public final class zzazf extends zzz<zzazj> implements DeathRecipient {
    private static final zzayo zzapq = new zzayo("CastRemoteDisplayClientImpl");
    private CastDevice zzaoX;
    private CastRemoteDisplaySessionCallbacks zzazc;
    private Bundle zzazd;

    public zzazf(Context context, Looper looper, zzq zzq, CastDevice castDevice, Bundle bundle, CastRemoteDisplaySessionCallbacks castRemoteDisplaySessionCallbacks, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 83, zzq, connectionCallbacks, onConnectionFailedListener);
        zzapq.zzb("instance created", new Object[0]);
        this.zzazc = castRemoteDisplaySessionCallbacks;
        this.zzaoX = castDevice;
        this.zzazd = bundle;
    }

    public final void binderDied() {
    }

    public final void disconnect() {
        zzapq.zzb("disconnect", new Object[0]);
        this.zzazc = null;
        this.zzaoX = null;
        try {
            ((zzazj) zzrf()).disconnect();
        } catch (RemoteException | IllegalStateException unused) {
        } finally {
            super.disconnect();
        }
    }

    public final void zza(zzazh zzazh) throws RemoteException {
        zzapq.zzb("stopRemoteDisplay", new Object[0]);
        ((zzazj) zzrf()).zza(zzazh);
    }

    public final void zza(zzazh zzazh, zzazl zzazl, String str) throws RemoteException {
        zzapq.zzb("startRemoteDisplay", new Object[0]);
        zzazh zzazh2 = zzazh;
        ((zzazj) zzrf()).zza(zzazh2, new zzazg(this, zzazl), this.zzaoX.getDeviceId(), str, this.zzazd);
    }

    public final /* synthetic */ IInterface zzd(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.remote_display.ICastRemoteDisplayService");
        return queryLocalInterface instanceof zzazj ? (zzazj) queryLocalInterface : new zzazk(iBinder);
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzdb() {
        return "com.google.android.gms.cast.remote_display.service.START";
    }

    /* Access modifiers changed, original: protected|final */
    public final String zzdc() {
        return "com.google.android.gms.cast.remote_display.ICastRemoteDisplayService";
    }
}
