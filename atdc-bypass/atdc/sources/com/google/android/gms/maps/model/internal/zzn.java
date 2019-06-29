package com.google.android.gms.maps.model.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzee;
import com.google.android.gms.internal.zzef;

public abstract class zzn extends zzee implements zzm {
    public static zzm zzae(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IIndoorLevelDelegate");
        return queryLocalInterface instanceof zzm ? (zzm) queryLocalInterface : new zzo(iBinder);
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        String name;
        switch (i) {
            case 1:
                name = getName();
                break;
            case 2:
                name = getShortName();
                break;
            case 3:
                activate();
                parcel2.writeNoException();
                return true;
            case 4:
                zzm zzm;
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzm = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IIndoorLevelDelegate");
                    zzm = queryLocalInterface instanceof zzm ? (zzm) queryLocalInterface : new zzo(readStrongBinder);
                }
                boolean zza = zza(zzm);
                parcel2.writeNoException();
                zzef.zza(parcel2, zza);
                return true;
            case 5:
                i = hashCodeRemote();
                parcel2.writeNoException();
                parcel2.writeInt(i);
                return true;
            default:
                return false;
        }
        parcel2.writeNoException();
        parcel2.writeString(name);
        return true;
    }
}
