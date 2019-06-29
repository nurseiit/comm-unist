package com.google.android.gms.cast.framework;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.IObjectWrapper.zza;
import com.google.android.gms.internal.zzed;

public final class zzh extends zzed implements zzf {
    zzh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.framework.IAppVisibilityListener");
    }

    public final void onAppEnteredBackground() throws RemoteException {
        zzb(3, zzZ());
    }

    public final void onAppEnteredForeground() throws RemoteException {
        zzb(2, zzZ());
    }

    public final int zznm() throws RemoteException {
        Parcel zza = zza(4, zzZ());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    public final IObjectWrapper zznn() throws RemoteException {
        Parcel zza = zza(1, zzZ());
        IObjectWrapper zzM = zza.zzM(zza.readStrongBinder());
        zza.recycle();
        return zzM;
    }
}
