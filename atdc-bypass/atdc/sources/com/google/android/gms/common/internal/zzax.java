package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

final class zzax implements zzaw {
    private final IBinder zzrD;

    zzax(IBinder iBinder) {
        this.zzrD = iBinder;
    }

    public final IBinder asBinder() {
        return this.zzrD;
    }

    public final void zza(zzau zzau, zzx zzx) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            obtain.writeStrongBinder(zzau.asBinder());
            obtain.writeInt(1);
            zzx.writeToParcel(obtain, 0);
            this.zzrD.transact(46, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
