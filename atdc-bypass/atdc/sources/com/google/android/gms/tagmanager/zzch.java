package com.google.android.gms.tagmanager;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;

public interface zzch extends IInterface {
    void onEvent(String str, String str2, Bundle bundle, long j) throws RemoteException;
}
