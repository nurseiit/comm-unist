package com.google.android.gms.internal;

import android.os.IInterface;
import android.os.RemoteException;
import android.view.Surface;

public interface zzazh extends IInterface {
    void onDisconnected() throws RemoteException;

    void onError(int i) throws RemoteException;

    void zza(int i, int i2, Surface surface) throws RemoteException;

    void zzoR() throws RemoteException;
}
