package com.google.android.gms.cast.framework;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

public interface zzf extends IInterface {
    void onAppEnteredBackground() throws RemoteException;

    void onAppEnteredForeground() throws RemoteException;

    int zznm() throws RemoteException;

    IObjectWrapper zznn() throws RemoteException;
}
