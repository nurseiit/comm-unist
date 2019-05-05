package com.google.android.gms.cast.framework;

import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzee;
import com.google.android.gms.internal.zzef;

public abstract class zzg extends zzee implements zzf {
    public zzg() {
        attachInterface(this, "com.google.android.gms.cast.framework.IAppVisibilityListener");
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
                onAppEnteredForeground();
                break;
            case 3:
                onAppEnteredBackground();
                break;
            case 4:
                i = zznm();
                parcel2.writeNoException();
                parcel2.writeInt(i);
                return true;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
