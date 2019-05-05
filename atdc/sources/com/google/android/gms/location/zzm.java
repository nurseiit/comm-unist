package com.google.android.gms.location;

import android.location.Location;
import android.os.IInterface;
import android.os.RemoteException;

public interface zzm extends IInterface {
    void onLocationChanged(Location location) throws RemoteException;
}
