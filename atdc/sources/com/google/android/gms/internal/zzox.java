package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper.zza;

public abstract class zzox extends zzee implements zzow {
    public zzox() {
        attachInterface(this, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    public static zzow zzj(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
        return queryLocalInterface instanceof zzow ? (zzow) queryLocalInterface : new zzoy(iBinder);
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                zzd(parcel.readString(), zza.zzM(parcel.readStrongBinder()));
                break;
            case 2:
                IInterface zzL = zzL(parcel.readString());
                parcel2.writeNoException();
                zzef.zza(parcel2, zzL);
                return true;
            case 3:
                zze(zza.zzM(parcel.readStrongBinder()));
                break;
            case 4:
                destroy();
                break;
            case 5:
                zzb(zza.zzM(parcel.readStrongBinder()), parcel.readInt());
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
