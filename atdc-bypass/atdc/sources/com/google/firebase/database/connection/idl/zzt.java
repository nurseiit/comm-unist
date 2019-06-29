package com.google.firebase.database.connection.idl;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

public interface zzt extends IInterface {
    void compareAndPut(List<String> list, IObjectWrapper iObjectWrapper, String str, zzah zzah) throws RemoteException;

    void initialize() throws RemoteException;

    void interrupt(String str) throws RemoteException;

    boolean isInterrupted(String str) throws RemoteException;

    void listen(List<String> list, IObjectWrapper iObjectWrapper, zzq zzq, long j, zzah zzah) throws RemoteException;

    void merge(List<String> list, IObjectWrapper iObjectWrapper, zzah zzah) throws RemoteException;

    void onDisconnectCancel(List<String> list, zzah zzah) throws RemoteException;

    void onDisconnectMerge(List<String> list, IObjectWrapper iObjectWrapper, zzah zzah) throws RemoteException;

    void onDisconnectPut(List<String> list, IObjectWrapper iObjectWrapper, zzah zzah) throws RemoteException;

    void purgeOutstandingWrites() throws RemoteException;

    void put(List<String> list, IObjectWrapper iObjectWrapper, zzah zzah) throws RemoteException;

    void refreshAuthToken() throws RemoteException;

    void refreshAuthToken2(String str) throws RemoteException;

    void resume(String str) throws RemoteException;

    void setup(zzc zzc, zzk zzk, IObjectWrapper iObjectWrapper, zzw zzw) throws RemoteException;

    void shutdown() throws RemoteException;

    void unlisten(List<String> list, IObjectWrapper iObjectWrapper) throws RemoteException;
}
