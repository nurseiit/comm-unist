package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;

public abstract class zzbki extends zzee implements zzbkh {
    public zzbki() {
        attachInterface(this, "com.google.android.gms.contextmanager.internal.IContextManagerPendingResult");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                zzd((Status) zzef.zza(parcel, Status.CREATOR));
                break;
            case 2:
                zza((Status) zzef.zza(parcel, Status.CREATOR), (DataHolder) zzef.zza(parcel, DataHolder.CREATOR), (DataHolder) zzef.zza(parcel, DataHolder.CREATOR));
                break;
            case 3:
                zza((Status) zzef.zza(parcel, Status.CREATOR), (zzbkl) zzef.zza(parcel, zzbkl.CREATOR));
                break;
            case 5:
                zza((Status) zzef.zza(parcel, Status.CREATOR), (DataHolder) zzef.zza(parcel, DataHolder.CREATOR));
                break;
            case 6:
                zza((Status) zzef.zza(parcel, Status.CREATOR), (zzati) zzef.zza(parcel, zzati.CREATOR));
                break;
            case 7:
                zza((Status) zzef.zza(parcel, Status.CREATOR), (zzbjf) zzef.zza(parcel, zzbjf.CREATOR));
                break;
            case 8:
                zza((Status) zzef.zza(parcel, Status.CREATOR), (zzbjd) zzef.zza(parcel, zzbjd.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
