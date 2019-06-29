package com.google.android.gms.cast.framework;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

public interface zzo extends IInterface {
    void onCastStateChanged(int i) throws RemoteException;

    IObjectWrapper zznn() throws RemoteException;
}
