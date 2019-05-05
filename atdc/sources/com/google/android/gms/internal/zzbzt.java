package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.fitness.service.FitnessSensorServiceRequest;

public abstract class zzbzt extends zzee implements zzbzs {
    public zzbzt() {
        attachInterface(this, "com.google.android.gms.fitness.internal.service.IFitnessSensorService");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                zza((zzbzo) zzef.zza(parcel, zzbzo.CREATOR), zzbvz.zzQ(parcel.readStrongBinder()));
                return true;
            case 2:
                zza((FitnessSensorServiceRequest) zzef.zza(parcel, FitnessSensorServiceRequest.CREATOR), zzbxh.zzW(parcel.readStrongBinder()));
                return true;
            case 3:
                zza((zzbzq) zzef.zza(parcel, zzbzq.CREATOR), zzbxh.zzW(parcel.readStrongBinder()));
                return true;
            default:
                return false;
        }
    }
}
