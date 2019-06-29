package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.fitness.result.DailyTotalResult;

public final class zzbvu extends zzed implements zzbvs {
    zzbvu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.fitness.internal.IDailyTotalCallback");
    }

    public final void zza(DailyTotalResult dailyTotalResult) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) dailyTotalResult);
        zzc(1, zzZ);
    }
}
