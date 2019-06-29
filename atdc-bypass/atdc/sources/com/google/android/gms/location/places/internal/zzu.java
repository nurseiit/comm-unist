package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzee;
import com.google.android.gms.internal.zzef;
import com.google.android.gms.location.places.PlacePhotoMetadataResult;
import com.google.android.gms.location.places.PlacePhotoResult;

public abstract class zzu extends zzee implements zzt {
    public zzu() {
        attachInterface(this, "com.google.android.gms.location.places.internal.IPhotosCallbacks");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 2:
                zza((PlacePhotoResult) zzef.zza(parcel, PlacePhotoResult.CREATOR));
                return true;
            case 3:
                zza((PlacePhotoMetadataResult) zzef.zza(parcel, PlacePhotoMetadataResult.CREATOR));
                return true;
            default:
                return false;
        }
    }
}
