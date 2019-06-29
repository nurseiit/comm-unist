package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzcqb extends zzee implements zzcqa {
    public zzcqb() {
        attachInterface(this, "com.google.android.gms.panorama.internal.IPanoramaCallbacks");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        zza(parcel.readInt(), (Bundle) zzef.zza(parcel, Bundle.CREATOR), parcel.readInt(), (Intent) zzef.zza(parcel, Intent.CREATOR));
        parcel2.writeNoException();
        return true;
    }
}
