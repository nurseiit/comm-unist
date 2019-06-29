package com.google.android.gms.tagmanager;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzee;
import com.google.android.gms.internal.zzef;

public abstract class zzcf extends zzee implements zzce {
    public zzcf() {
        attachInterface(this, "com.google.android.gms.tagmanager.ICustomEvaluatorProxy");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                zze(parcel.readString(), zzef.zzc(parcel));
                parcel2.writeNoException();
                return true;
            case 2:
                String zzf = zzf(parcel.readString(), zzef.zzc(parcel));
                parcel2.writeNoException();
                parcel2.writeString(zzf);
                return true;
            default:
                return false;
        }
    }
}
