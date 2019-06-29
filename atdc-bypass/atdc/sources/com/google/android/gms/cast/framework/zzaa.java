package com.google.android.gms.cast.framework;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

public interface zzaa extends IInterface {
    String getCategory() throws RemoteException;

    boolean isSessionRecoverable() throws RemoteException;

    IObjectWrapper zzcd(String str) throws RemoteException;
}
