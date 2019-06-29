package com.google.android.gms.maps.model.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzed;
import com.google.android.gms.internal.zzef;

public final class zzo extends zzed implements zzm {
    zzo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.IIndoorLevelDelegate");
    }

    public final void activate() throws RemoteException {
        zzb(3, zzZ());
    }

    public final String getName() throws RemoteException {
        Parcel zza = zza(1, zzZ());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final String getShortName() throws RemoteException {
        Parcel zza = zza(2, zzZ());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final int hashCodeRemote() throws RemoteException {
        Parcel zza = zza(5, zzZ());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    public final boolean zza(zzm zzm) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzm);
        Parcel zza = zza(4, zzZ);
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }
}
