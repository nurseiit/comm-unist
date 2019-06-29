package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

public abstract class zu extends zzee implements zt {
    public zu() {
        attachInterface(this, "com.google.firebase.dynamiclinks.internal.IDynamicLinksCallbacks");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                zza((Status) zzef.zza(parcel, Status.CREATOR), (zi) zzef.zza(parcel, zi.CREATOR));
                return true;
            case 2:
                zza((Status) zzef.zza(parcel, Status.CREATOR), (zx) zzef.zza(parcel, zx.CREATOR));
                return true;
            default:
                return false;
        }
    }
}
