package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.search.GoogleNowAuthState;

public abstract class zzcsv extends zzee implements zzcsu {
    public zzcsv() {
        attachInterface(this, "com.google.android.gms.search.internal.ISearchAuthCallbacks");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                zza((Status) zzef.zza(parcel, Status.CREATOR), (GoogleNowAuthState) zzef.zza(parcel, GoogleNowAuthState.CREATOR));
                return true;
            case 2:
                zzH((Status) zzef.zza(parcel, Status.CREATOR));
                return true;
            default:
                return false;
        }
    }
}
