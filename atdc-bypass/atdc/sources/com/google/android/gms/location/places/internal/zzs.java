package com.google.android.gms.location.places.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.internal.zzed;
import com.google.android.gms.internal.zzef;
import com.google.android.gms.location.places.AddPlaceRequest;
import com.google.android.gms.location.places.AutocompleteFilter;
import com.google.android.gms.maps.model.LatLngBounds;
import java.util.List;

public final class zzs extends zzed implements zzr {
    zzs(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.places.internal.IGooglePlacesService");
    }

    public final void zza(AddPlaceRequest addPlaceRequest, zzat zzat, zzv zzv) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) addPlaceRequest);
        zzef.zza(zzZ, (Parcelable) zzat);
        zzef.zza(zzZ, (IInterface) zzv);
        zzb(14, zzZ);
    }

    public final void zza(String str, int i, int i2, int i3, zzat zzat, zzt zzt) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeInt(i);
        zzZ.writeInt(i2);
        zzZ.writeInt(i3);
        zzef.zza(zzZ, (Parcelable) zzat);
        zzef.zza(zzZ, (IInterface) zzt);
        zzb(20, zzZ);
    }

    public final void zza(String str, zzat zzat, zzt zzt) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (Parcelable) zzat);
        zzef.zza(zzZ, (IInterface) zzt);
        zzb(19, zzZ);
    }

    public final void zza(String str, LatLngBounds latLngBounds, AutocompleteFilter autocompleteFilter, zzat zzat, zzv zzv) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (Parcelable) latLngBounds);
        zzef.zza(zzZ, (Parcelable) autocompleteFilter);
        zzef.zza(zzZ, (Parcelable) zzat);
        zzef.zza(zzZ, (IInterface) zzv);
        zzb(13, zzZ);
    }

    public final void zza(List<String> list, zzat zzat, zzv zzv) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeStringList(list);
        zzef.zza(zzZ, (Parcelable) zzat);
        zzef.zza(zzZ, (IInterface) zzv);
        zzb(17, zzZ);
    }
}
