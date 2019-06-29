package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class zzff extends zzed implements zzfd {
    zzff(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
    }

    public final String getId() throws RemoteException {
        Parcel zza = zza(1, zzZ());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final boolean zzb(boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, z);
        Parcel zza = zza(2, zzZ);
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final void zzc(String str, boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, z);
        zzb(4, zzZ);
    }

    public final String zzq(String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        Parcel zza = zza(3, zzZ);
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }
}
