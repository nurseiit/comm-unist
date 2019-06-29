package com.google.android.gms.nearby.messages.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzee;
import com.google.android.gms.internal.zzef;

public abstract class zzn extends zzee implements zzm {
    public zzn() {
        attachInterface(this, "com.google.android.gms.nearby.messages.internal.IMessageListener");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i != 4) {
            switch (i) {
                case 1:
                    zza((zzaf) zzef.zza(parcel, zzaf.CREATOR));
                    return true;
                case 2:
                    zzb((zzaf) zzef.zza(parcel, zzaf.CREATOR));
                    return true;
                default:
                    return false;
            }
        }
        zzH(parcel.createTypedArrayList(Update.CREATOR));
        return true;
    }
}
