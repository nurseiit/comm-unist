package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public final class zzcmo extends zzed implements zzcmm {
    zzcmo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.nearby.internal.connection.IAdvertisingCallback");
    }

    public final void zza(zzcnq zzcnq) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzcnq);
        zzc(2, zzZ);
    }

    public final void zza(zzcoi zzcoi) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzcoi);
        zzc(3, zzZ);
    }
}
