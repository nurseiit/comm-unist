package com.google.android.gms.maps.model.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzed;
import com.google.android.gms.internal.zzef;
import java.util.ArrayList;
import java.util.List;

public final class zzl extends zzed implements zzj {
    zzl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
    }

    public final int getActiveLevelIndex() throws RemoteException {
        Parcel zza = zza(1, zzZ());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    public final int getDefaultLevelIndex() throws RemoteException {
        Parcel zza = zza(2, zzZ());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    public final List<IBinder> getLevels() throws RemoteException {
        Parcel zza = zza(3, zzZ());
        ArrayList createBinderArrayList = zza.createBinderArrayList();
        zza.recycle();
        return createBinderArrayList;
    }

    public final int hashCodeRemote() throws RemoteException {
        Parcel zza = zza(6, zzZ());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    public final boolean isUnderground() throws RemoteException {
        Parcel zza = zza(4, zzZ());
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final boolean zzb(zzj zzj) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzj);
        Parcel zza = zza(5, zzZ);
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }
}
