package com.google.android.gms.location.places.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.location.places.AddPlaceRequest;
import com.google.android.gms.location.places.AutocompleteFilter;
import com.google.android.gms.maps.model.LatLngBounds;
import java.util.List;

public interface zzr extends IInterface {
    void zza(AddPlaceRequest addPlaceRequest, zzat zzat, zzv zzv) throws RemoteException;

    void zza(String str, int i, int i2, int i3, zzat zzat, zzt zzt) throws RemoteException;

    void zza(String str, zzat zzat, zzt zzt) throws RemoteException;

    void zza(String str, LatLngBounds latLngBounds, AutocompleteFilter autocompleteFilter, zzat zzat, zzv zzv) throws RemoteException;

    void zza(List<String> list, zzat zzat, zzv zzv) throws RemoteException;
}
