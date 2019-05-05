package com.google.android.gms.cast.framework;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

public interface zzw extends IInterface {
    int getCastState() throws RemoteException;

    void zza(zzo zzo) throws RemoteException;

    void zza(zzy zzy) throws RemoteException;

    void zzb(zzo zzo) throws RemoteException;

    void zzb(zzy zzy) throws RemoteException;

    void zzb(boolean z, boolean z2) throws RemoteException;

    IObjectWrapper zznu() throws RemoteException;

    IObjectWrapper zzny() throws RemoteException;
}
