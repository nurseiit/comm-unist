package com.google.firebase.appindexing.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzbdn;
import com.google.android.gms.internal.zzed;
import com.google.android.gms.internal.zzef;

public final class zzv extends zzed implements zzu {
    zzv(IBinder iBinder) {
        super(iBinder, "com.google.firebase.appindexing.internal.IAppIndexingService");
    }

    public final void zza(zzbdn zzbdn) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzbdn);
        zzb(3, zzZ);
    }

    public final void zza(zzbdn zzbdn, Thing[] thingArr) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzbdn);
        zzZ.writeTypedArray(thingArr, 0);
        zzb(1, zzZ);
    }

    public final void zza(zzbdn zzbdn, String[] strArr) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzbdn);
        zzZ.writeStringArray(strArr);
        zzb(2, zzZ);
    }
}
