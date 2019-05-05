package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.fitness.result.GoalsResult;

public final class zzbwg extends zzed implements zzbwe {
    zzbwg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.fitness.internal.IGoalsReadCallback");
    }

    public final void zza(GoalsResult goalsResult) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) goalsResult);
        zzc(1, zzZ);
    }
}
