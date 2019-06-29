package com.google.android.gms.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

public interface zzpj extends IInterface {
    void destroy() throws RemoteException;

    List<String> getAvailableAssetNames() throws RemoteException;

    String getCustomTemplateId() throws RemoteException;

    zzks getVideoController() throws RemoteException;

    void performClick(String str) throws RemoteException;

    void recordImpression() throws RemoteException;

    String zzP(String str) throws RemoteException;

    zzos zzQ(String str) throws RemoteException;

    IObjectWrapper zzei() throws RemoteException;

    IObjectWrapper zzen() throws RemoteException;

    boolean zzj(IObjectWrapper iObjectWrapper) throws RemoteException;
}
