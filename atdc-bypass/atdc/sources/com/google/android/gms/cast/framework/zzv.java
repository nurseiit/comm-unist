package com.google.android.gms.cast.framework;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.IObjectWrapper.zza;
import com.google.android.gms.internal.zzed;
import com.google.android.gms.internal.zzef;

public final class zzv extends zzed implements zzu {
    zzv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.framework.ISession");
    }

    public final String getCategory() throws RemoteException {
        Parcel zza = zza(2, zzZ());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final String getSessionId() throws RemoteException {
        Parcel zza = zza(3, zzZ());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final boolean isConnected() throws RemoteException {
        Parcel zza = zza(5, zzZ());
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final boolean isConnecting() throws RemoteException {
        Parcel zza = zza(6, zzZ());
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final boolean isDisconnected() throws RemoteException {
        Parcel zza = zza(8, zzZ());
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final boolean isDisconnecting() throws RemoteException {
        Parcel zza = zza(7, zzZ());
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final boolean isResuming() throws RemoteException {
        Parcel zza = zza(9, zzZ());
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final boolean isSuspended() throws RemoteException {
        Parcel zza = zza(10, zzZ());
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final void notifyFailedToResumeSession(int i) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeInt(i);
        zzb(15, zzZ);
    }

    public final void notifyFailedToStartSession(int i) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeInt(i);
        zzb(12, zzZ);
    }

    public final void notifySessionEnded(int i) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeInt(i);
        zzb(13, zzZ);
    }

    public final void notifySessionResumed(boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, z);
        zzb(14, zzZ);
    }

    public final void notifySessionStarted(String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzb(11, zzZ);
    }

    public final void notifySessionSuspended(int i) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeInt(i);
        zzb(16, zzZ);
    }

    public final IObjectWrapper zznw() throws RemoteException {
        Parcel zza = zza(1, zzZ());
        IObjectWrapper zzM = zza.zzM(zza.readStrongBinder());
        zza.recycle();
        return zzM;
    }

    public final String zznx() throws RemoteException {
        Parcel zza = zza(4, zzZ());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }
}
