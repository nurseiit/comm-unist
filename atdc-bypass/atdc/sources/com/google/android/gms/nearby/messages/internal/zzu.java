package com.google.android.gms.nearby.messages.internal;

import android.os.IInterface;
import android.os.RemoteException;

public interface zzu extends IInterface {
    void onExpired() throws RemoteException;
}
