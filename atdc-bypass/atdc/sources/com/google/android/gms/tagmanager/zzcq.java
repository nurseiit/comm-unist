package com.google.android.gms.tagmanager;

import android.content.Intent;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

public interface zzcq extends IInterface {
    void initialize(IObjectWrapper iObjectWrapper, zzcn zzcn, zzce zzce) throws RemoteException;

    void preview(Intent intent, IObjectWrapper iObjectWrapper) throws RemoteException;

    void previewIntent(Intent intent, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, zzcn zzcn, zzce zzce) throws RemoteException;
}
