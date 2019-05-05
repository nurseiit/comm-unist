package com.google.android.gms.cast.framework;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.IObjectWrapper.zza;
import com.google.android.gms.internal.zzed;
import com.google.android.gms.internal.zzef;

public final class zzx extends zzed implements zzw {
    zzx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.framework.ISessionManager");
    }

    public final int getCastState() throws RemoteException {
        Parcel zza = zza(8, zzZ());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    public final void zza(zzo zzo) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzo);
        zzb(4, zzZ);
    }

    public final void zza(zzy zzy) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzy);
        zzb(2, zzZ);
    }

    public final void zzb(zzo zzo) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzo);
        zzb(5, zzZ);
    }

    public final void zzb(zzy zzy) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzy);
        zzb(3, zzZ);
    }

    public final void zzb(boolean z, boolean z2) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, true);
        zzef.zza(zzZ, z2);
        zzb(6, zzZ);
    }

    public final IObjectWrapper zznu() throws RemoteException {
        Parcel zza = zza(7, zzZ());
        IObjectWrapper zzM = zza.zzM(zza.readStrongBinder());
        zza.recycle();
        return zzM;
    }

    public final IObjectWrapper zzny() throws RemoteException {
        Parcel zza = zza(1, zzZ());
        IObjectWrapper zzM = zza.zzM(zza.readStrongBinder());
        zza.recycle();
        return zzM;
    }
}
