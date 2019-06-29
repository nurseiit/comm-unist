package com.google.android.gms.tagmanager;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import java.util.Map;

public interface zzcn extends IInterface {
    void logEventInternalNoInterceptor(String str, String str2, Bundle bundle, long j) throws RemoteException;

    Map zzBh() throws RemoteException;

    void zza(zzch zzch) throws RemoteException;

    void zza(zzck zzck) throws RemoteException;
}
