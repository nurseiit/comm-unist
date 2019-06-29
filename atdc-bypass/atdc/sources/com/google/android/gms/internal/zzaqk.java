package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

public abstract class zzaqk extends zzee implements zzaqj {
    public zzaqk() {
        attachInterface(this, "com.google.android.gms.appinvite.internal.IAppInviteCallbacks");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                zzc((Status) zzef.zza(parcel, Status.CREATOR));
                break;
            case 2:
                zza((Status) zzef.zza(parcel, Status.CREATOR), (Intent) zzef.zza(parcel, Intent.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
