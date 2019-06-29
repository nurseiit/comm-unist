package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.cast.ApplicationMetadata;

public abstract class zzaym extends zzee implements zzayl {
    public zzaym() {
        attachInterface(this, "com.google.android.gms.cast.internal.ICastDeviceControllerListener");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                zzae(parcel.readInt());
                return true;
            case 2:
                zza((ApplicationMetadata) zzef.zza(parcel, ApplicationMetadata.CREATOR), parcel.readString(), parcel.readString(), zzef.zza(parcel));
                return true;
            case 3:
                zzZ(parcel.readInt());
                return true;
            case 4:
                zza(parcel.readString(), parcel.readDouble(), zzef.zza(parcel));
                return true;
            case 5:
                zzu(parcel.readString(), parcel.readString());
                return true;
            case 6:
                zza(parcel.readString(), parcel.createByteArray());
                return true;
            case 7:
                zzag(parcel.readInt());
                return true;
            case 8:
                zzaf(parcel.readInt());
                return true;
            case 9:
                onApplicationDisconnected(parcel.readInt());
                return true;
            case 10:
                zza(parcel.readString(), parcel.readLong(), parcel.readInt());
                return true;
            case 11:
                zzb(parcel.readString(), parcel.readLong());
                return true;
            case 12:
                zzb((zzaxq) zzef.zza(parcel, zzaxq.CREATOR));
                return true;
            case 13:
                zzb((zzayf) zzef.zza(parcel, zzayf.CREATOR));
                return true;
            default:
                return false;
        }
    }
}
