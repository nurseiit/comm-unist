package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.safetynet.SafeBrowsingData;
import com.google.android.gms.safetynet.zza;
import com.google.android.gms.safetynet.zzd;
import com.google.android.gms.safetynet.zzf;

public abstract class zzcrx extends zzee implements zzcrw {
    public zzcrx() {
        attachInterface(this, "com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                zza((Status) zzef.zza(parcel, Status.CREATOR), (zza) zzef.zza(parcel, zza.CREATOR));
                return true;
            case 2:
                zzeG(parcel.readString());
                return true;
            case 3:
                zza((Status) zzef.zza(parcel, Status.CREATOR), (SafeBrowsingData) zzef.zza(parcel, SafeBrowsingData.CREATOR));
                return true;
            case 4:
                zza((Status) zzef.zza(parcel, Status.CREATOR), zzef.zza(parcel));
                return true;
            case 6:
                zza((Status) zzef.zza(parcel, Status.CREATOR), (zzf) zzef.zza(parcel, zzf.CREATOR));
                return true;
            case 7:
                zzb((Status) zzef.zza(parcel, Status.CREATOR), zzef.zza(parcel));
                return true;
            case 8:
                zza((Status) zzef.zza(parcel, Status.CREATOR), (zzd) zzef.zza(parcel, zzd.CREATOR));
                return true;
            case 10:
                zzc((Status) zzef.zza(parcel, Status.CREATOR), zzef.zza(parcel));
                return true;
            case 11:
                zzF((Status) zzef.zza(parcel, Status.CREATOR));
                return true;
            case 12:
                zzd((Status) zzef.zza(parcel, Status.CREATOR), zzef.zza(parcel));
                return true;
            default:
                return false;
        }
    }
}
