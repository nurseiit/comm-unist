package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.fitness.result.SessionStopResult;

public final class zzbxf extends zzed implements zzbxd {
    zzbxf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.fitness.internal.ISessionStopCallback");
    }

    public final void zza(SessionStopResult sessionStopResult) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) sessionStopResult);
        zzc(1, zzZ);
    }
}
