package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.fitness.result.DailyTotalResult;

public abstract class zzbvt extends zzee implements zzbvs {
    public zzbvt() {
        attachInterface(this, "com.google.android.gms.fitness.internal.IDailyTotalCallback");
    }

    public static zzbvs zzO(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.fitness.internal.IDailyTotalCallback");
        return queryLocalInterface instanceof zzbvs ? (zzbvs) queryLocalInterface : new zzbvu(iBinder);
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        zza((DailyTotalResult) zzef.zza(parcel, DailyTotalResult.CREATOR));
        return true;
    }
}
