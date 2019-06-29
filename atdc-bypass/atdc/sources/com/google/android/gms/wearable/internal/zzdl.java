package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.zzee;
import com.google.android.gms.internal.zzef;

public abstract class zzdl extends zzee implements zzdk {
    public zzdl() {
        attachInterface(this, "com.google.android.gms.wearable.internal.IWearableListener");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                zzS((DataHolder) zzef.zza(parcel, DataHolder.CREATOR));
                return true;
            case 2:
                zza((zzdx) zzef.zza(parcel, zzdx.CREATOR));
                return true;
            case 3:
                zza((zzeg) zzef.zza(parcel, zzeg.CREATOR));
                return true;
            case 4:
                zzb((zzeg) zzef.zza(parcel, zzeg.CREATOR));
                return true;
            case 5:
                onConnectedNodes(parcel.createTypedArrayList(zzeg.CREATOR));
                return true;
            case 6:
                zza((zzl) zzef.zza(parcel, zzl.CREATOR));
                return true;
            case 7:
                zza((zzai) zzef.zza(parcel, zzai.CREATOR));
                return true;
            case 8:
                zza((zzaa) zzef.zza(parcel, zzaa.CREATOR));
                return true;
            case 9:
                zza((zzi) zzef.zza(parcel, zzi.CREATOR));
                return true;
            default:
                return false;
        }
    }
}
