package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

public interface zzpf extends IInterface {
    void destroy() throws RemoteException;

    String getAdvertiser() throws RemoteException;

    String getBody() throws RemoteException;

    String getCallToAction() throws RemoteException;

    Bundle getExtras() throws RemoteException;

    String getHeadline() throws RemoteException;

    List getImages() throws RemoteException;

    zzks getVideoController() throws RemoteException;

    void zzc(Bundle bundle) throws RemoteException;

    boolean zzd(Bundle bundle) throws RemoteException;

    void zze(Bundle bundle) throws RemoteException;

    IObjectWrapper zzei() throws RemoteException;

    zzos zzem() throws RemoteException;
}
