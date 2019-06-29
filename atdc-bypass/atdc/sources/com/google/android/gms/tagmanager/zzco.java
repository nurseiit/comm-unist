package com.google.android.gms.tagmanager;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzee;
import com.google.android.gms.internal.zzef;
import java.util.Map;

public abstract class zzco extends zzee implements zzcn {
    public zzco() {
        attachInterface(this, "com.google.android.gms.tagmanager.IMeasurementProxy");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i == 2) {
            logEventInternalNoInterceptor(parcel.readString(), parcel.readString(), (Bundle) zzef.zza(parcel, Bundle.CREATOR), parcel.readLong());
        } else if (i != 11) {
            zzck zzck = null;
            IBinder readStrongBinder;
            IInterface queryLocalInterface;
            switch (i) {
                case 21:
                    readStrongBinder = parcel.readStrongBinder();
                    if (readStrongBinder != null) {
                        queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.tagmanager.IMeasurementInterceptor");
                        zzck = queryLocalInterface instanceof zzck ? (zzck) queryLocalInterface : new zzcm(readStrongBinder);
                    }
                    zza(zzck);
                    break;
                case 22:
                    zzch zzcj;
                    readStrongBinder = parcel.readStrongBinder();
                    if (readStrongBinder != null) {
                        queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.tagmanager.IMeasurementEventListener");
                        zzcj = queryLocalInterface instanceof zzch ? (zzch) queryLocalInterface : new zzcj(readStrongBinder);
                    }
                    zza(zzcj);
                    break;
                default:
                    return false;
            }
        } else {
            Map zzBh = zzBh();
            parcel2.writeNoException();
            parcel2.writeMap(zzBh);
            return true;
        }
        parcel2.writeNoException();
        return true;
    }
}
