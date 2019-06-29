package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

public final class mk extends zzed implements mj {
    mk(IBinder iBinder) {
        super(iBinder, "com.google.firebase.crash.internal.IFirebaseCrashApi");
    }

    public final void log(String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzb(2, zzZ);
    }

    public final boolean zzFf() throws RemoteException {
        Parcel zza = zza(9, zzZ());
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final void zzL(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzb(4, zzZ);
    }

    public final void zzM(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzb(5, zzZ);
    }

    public final void zza(IObjectWrapper iObjectWrapper, mh mhVar) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (Parcelable) mhVar);
        zzb(1, zzZ);
    }

    public final void zza(String str, long j, Bundle bundle) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeLong(j);
        zzef.zza(zzZ, (Parcelable) bundle);
        zzb(7, zzZ);
    }

    public final void zzaz(boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, z);
        zzb(8, zzZ);
    }

    public final void zzgz(String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzb(6, zzZ);
    }
}
