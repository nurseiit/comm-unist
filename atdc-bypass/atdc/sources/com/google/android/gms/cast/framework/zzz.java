package com.google.android.gms.cast.framework;

import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper.zza;
import com.google.android.gms.internal.zzee;
import com.google.android.gms.internal.zzef;

public abstract class zzz extends zzee implements zzy {
    public zzz() {
        attachInterface(this, "com.google.android.gms.cast.framework.ISessionManagerListener");
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
                zzz(zza.zzM(parcel.readStrongBinder()));
                break;
            case 3:
                zzc(zza.zzM(parcel.readStrongBinder()), parcel.readString());
                break;
            case 4:
                zze(zza.zzM(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 5:
                zzA(zza.zzM(parcel.readStrongBinder()));
                break;
            case 6:
                zzf(zza.zzM(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 7:
                zzd(zza.zzM(parcel.readStrongBinder()), parcel.readString());
                break;
            case 8:
                zza(zza.zzM(parcel.readStrongBinder()), zzef.zza(parcel));
                break;
            case 9:
                zzg(zza.zzM(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 10:
                zzh(zza.zzM(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 11:
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
