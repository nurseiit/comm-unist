package com.google.android.gms.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

public interface aca extends IInterface {
    int getResultCode() throws RemoteException;

    void reset() throws RemoteException;

    void zzLf() throws RemoteException;

    IObjectWrapper zzLg() throws RemoteException;

    IObjectWrapper zzLh() throws RemoteException;

    String zzLi() throws RemoteException;

    IObjectWrapper zzLj() throws RemoteException;

    boolean zzLk() throws RemoteException;

    int zzLl() throws RemoteException;

    void zzam(String str, String str2) throws RemoteException;

    void zzhM(String str) throws RemoteException;

    void zzhN(String str) throws RemoteException;

    String zzhO(String str) throws RemoteException;
}
