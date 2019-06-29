package com.google.android.gms.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.search.GoogleNowAuthState;

public interface zzcsu extends IInterface {
    void zzH(Status status) throws RemoteException;

    void zza(Status status, GoogleNowAuthState googleNowAuthState) throws RemoteException;
}
