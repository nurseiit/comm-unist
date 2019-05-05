package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.zzee;
import com.google.android.gms.internal.zzef;

public abstract class zzw extends zzee implements zzv {
    public zzw() {
        attachInterface(this, "com.google.android.gms.location.places.internal.IPlacesCallbacks");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                zzO((DataHolder) zzef.zza(parcel, DataHolder.CREATOR));
                return true;
            case 2:
                zzP((DataHolder) zzef.zza(parcel, DataHolder.CREATOR));
                return true;
            case 3:
                zzQ((DataHolder) zzef.zza(parcel, DataHolder.CREATOR));
                return true;
            case 4:
                zzF((Status) zzef.zza(parcel, Status.CREATOR));
                return true;
            case 5:
                zzR((DataHolder) zzef.zza(parcel, DataHolder.CREATOR));
                return true;
            default:
                return false;
        }
    }
}
