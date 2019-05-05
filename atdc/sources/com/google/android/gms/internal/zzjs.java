package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzjs extends zzee implements zzjr {
    public zzjs() {
        attachInterface(this, "com.google.android.gms.ads.internal.client.IAdLoader");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        String mediationAdapterClassName;
        switch (i) {
            case 1:
                zzc((zzir) zzef.zza(parcel, zzir.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                mediationAdapterClassName = getMediationAdapterClassName();
                break;
            case 3:
                boolean isLoading = isLoading();
                parcel2.writeNoException();
                zzef.zza(parcel2, isLoading);
                return true;
            case 4:
                mediationAdapterClassName = zzaI();
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        parcel2.writeString(mediationAdapterClassName);
        return true;
    }
}
