package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzur extends zzee implements zzuq {
    public zzur() {
        attachInterface(this, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    public static zzuq zzq(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
        return queryLocalInterface instanceof zzuq ? (zzuq) queryLocalInterface : new zzus(iBinder);
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                IInterface zzah = zzah(parcel.readString());
                parcel2.writeNoException();
                zzef.zza(parcel2, zzah);
                return true;
            case 2:
                boolean zzai = zzai(parcel.readString());
                parcel2.writeNoException();
                zzef.zza(parcel2, zzai);
                return true;
            default:
                return false;
        }
    }
}
