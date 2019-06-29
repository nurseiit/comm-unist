package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.fitness.result.ListSubscriptionsResult;

public abstract class zzbwy extends zzee implements zzbwx {
    public zzbwy() {
        attachInterface(this, "com.google.android.gms.fitness.internal.IListSubscriptionsCallback");
    }

    public static zzbwx zzT(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.fitness.internal.IListSubscriptionsCallback");
        return queryLocalInterface instanceof zzbwx ? (zzbwx) queryLocalInterface : new zzbwz(iBinder);
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        zza((ListSubscriptionsResult) zzef.zza(parcel, ListSubscriptionsResult.CREATOR));
        return true;
    }
}
