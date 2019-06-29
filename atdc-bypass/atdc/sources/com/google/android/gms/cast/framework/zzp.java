package com.google.android.gms.cast.framework;

import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzee;
import com.google.android.gms.internal.zzef;

public abstract class zzp extends zzee implements zzo {
    public zzp() {
        attachInterface(this, "com.google.android.gms.cast.framework.ICastStateListener");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                IInterface zznn = zznn();
                parcel2.writeNoException();
                zzef.zza(parcel2, zznn);
                return true;
            case 2:
                onCastStateChanged(parcel.readInt());
                parcel2.writeNoException();
                return true;
            case 3:
                parcel2.writeNoException();
                parcel2.writeInt(11020208);
                return true;
            default:
                return false;
        }
    }
}
