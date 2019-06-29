package com.google.android.gms.tagmanager;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.internal.zzed;
import com.google.android.gms.internal.zzef;
import java.util.HashMap;
import java.util.Map;

public final class zzcp extends zzed implements zzcn {
    zzcp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.tagmanager.IMeasurementProxy");
    }

    public final void logEventInternalNoInterceptor(String str, String str2, Bundle bundle, long j) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzef.zza(zzZ, (Parcelable) bundle);
        zzZ.writeLong(j);
        zzb(2, zzZ);
    }

    public final Map zzBh() throws RemoteException {
        Parcel zza = zza(11, zzZ());
        HashMap zzc = zzef.zzc(zza);
        zza.recycle();
        return zzc;
    }

    public final void zza(zzch zzch) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzch);
        zzb(22, zzZ);
    }

    public final void zza(zzck zzck) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzck);
        zzb(21, zzZ);
    }
}
