package com.google.android.gms.location.places.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.location.places.PlaceFilter;
import com.google.android.gms.location.places.PlaceReport;

public interface zzp extends IInterface {
    void zza(PlaceFilter placeFilter, zzat zzat, zzv zzv) throws RemoteException;

    void zza(PlaceReport placeReport, zzat zzat, zzv zzv) throws RemoteException;
}
