package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.fitness.result.DataTypeResult;

public abstract class zzbwc extends zzee implements zzbwb {
    public zzbwc() {
        attachInterface(this, "com.google.android.gms.fitness.internal.IDataTypeCallback");
    }

    public static zzbwb zzR(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.fitness.internal.IDataTypeCallback");
        return queryLocalInterface instanceof zzbwb ? (zzbwb) queryLocalInterface : new zzbwd(iBinder);
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        zza((DataTypeResult) zzef.zza(parcel, DataTypeResult.CREATOR));
        return true;
    }
}
