package com.google.android.gms.cast.framework;

import android.os.Bundle;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzee;
import com.google.android.gms.internal.zzef;

public abstract class zzad extends zzee implements zzac {
    public zzad() {
        attachInterface(this, "com.google.android.gms.cast.framework.ISessionProxy");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                IInterface zznz = zznz();
                parcel2.writeNoException();
                zzef.zza(parcel2, zznz);
                return true;
            case 2:
                start((Bundle) zzef.zza(parcel, Bundle.CREATOR));
                break;
            case 3:
                resume((Bundle) zzef.zza(parcel, Bundle.CREATOR));
                break;
            case 4:
                end(zzef.zza(parcel));
                break;
            case 5:
                long sessionRemainingTimeMs = getSessionRemainingTimeMs();
                parcel2.writeNoException();
                parcel2.writeLong(sessionRemainingTimeMs);
                return true;
            case 6:
                parcel2.writeNoException();
                parcel2.writeInt(11020208);
                return true;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
