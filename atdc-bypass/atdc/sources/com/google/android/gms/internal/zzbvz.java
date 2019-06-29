package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.fitness.result.DataSourcesResult;

public abstract class zzbvz extends zzee implements zzbvy {
    public zzbvz() {
        attachInterface(this, "com.google.android.gms.fitness.internal.IDataSourcesCallback");
    }

    public static zzbvy zzQ(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.fitness.internal.IDataSourcesCallback");
        return queryLocalInterface instanceof zzbvy ? (zzbvy) queryLocalInterface : new zzbwa(iBinder);
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        zza((DataSourcesResult) zzef.zza(parcel, DataSourcesResult.CREATOR));
        return true;
    }
}
