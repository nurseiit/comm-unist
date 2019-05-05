package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.fitness.request.GoalsReadRequest;

public final class zzbwm extends zzed implements zzbwl {
    zzbwm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.fitness.internal.IGoogleFitGoalsApi");
    }

    public final void zza(GoalsReadRequest goalsReadRequest) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) goalsReadRequest);
        zzb(1, zzZ);
    }
}
