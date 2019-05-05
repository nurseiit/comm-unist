package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public final class zzazk extends zzed implements zzazj {
    zzazk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.remote_display.ICastRemoteDisplayService");
    }

    public final void disconnect() throws RemoteException {
        zzc(3, zzZ());
    }

    public final void zza(zzazh zzazh) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzazh);
        zzc(6, zzZ);
    }

    public final void zza(zzazh zzazh, int i) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzazh);
        zzZ.writeInt(i);
        zzc(5, zzZ);
    }

    public final void zza(zzazh zzazh, zzazl zzazl, String str, String str2, Bundle bundle) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzazh);
        zzef.zza(zzZ, (IInterface) zzazl);
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzef.zza(zzZ, (Parcelable) bundle);
        zzc(7, zzZ);
    }
}
