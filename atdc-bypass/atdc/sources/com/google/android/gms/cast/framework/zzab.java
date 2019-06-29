package com.google.android.gms.cast.framework;

import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzee;
import com.google.android.gms.internal.zzef;

public abstract class zzab extends zzee implements zzaa {
    public zzab() {
        attachInterface(this, "com.google.android.gms.cast.framework.ISessionProvider");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                IInterface zzcd = zzcd(parcel.readString());
                parcel2.writeNoException();
                zzef.zza(parcel2, zzcd);
                return true;
            case 2:
                boolean isSessionRecoverable = isSessionRecoverable();
                parcel2.writeNoException();
                zzef.zza(parcel2, isSessionRecoverable);
                return true;
            case 3:
                String category = getCategory();
                parcel2.writeNoException();
                parcel2.writeString(category);
                return true;
            case 4:
                parcel2.writeNoException();
                parcel2.writeInt(11020208);
                return true;
            default:
                return false;
        }
    }
}
