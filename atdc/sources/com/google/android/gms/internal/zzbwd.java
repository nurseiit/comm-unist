package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.fitness.result.DataTypeResult;

public final class zzbwd extends zzed implements zzbwb {
    zzbwd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.fitness.internal.IDataTypeCallback");
    }

    public final void zza(DataTypeResult dataTypeResult) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) dataTypeResult);
        zzc(1, zzZ);
    }
}
