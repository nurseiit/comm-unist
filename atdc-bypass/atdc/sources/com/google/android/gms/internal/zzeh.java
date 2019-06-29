package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.auth.AccountChangeEventsRequest;

public abstract class zzeh extends zzee implements zzeg {
    public static zzeg zza(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.auth.IAuthManagerService");
        return queryLocalInterface instanceof zzeg ? (zzeg) queryLocalInterface : new zzei(iBinder);
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        Parcelable zza;
        switch (i) {
            case 1:
                zza = zza(parcel.readString(), parcel.readString(), (Bundle) zzef.zza(parcel, Bundle.CREATOR));
                break;
            case 2:
                zza = zza(parcel.readString(), (Bundle) zzef.zza(parcel, Bundle.CREATOR));
                break;
            case 3:
                zza = zza((AccountChangeEventsRequest) zzef.zza(parcel, AccountChangeEventsRequest.CREATOR));
                break;
            case 5:
                zza = zza((Account) zzef.zza(parcel, Account.CREATOR), parcel.readString(), (Bundle) zzef.zza(parcel, Bundle.CREATOR));
                break;
            case 6:
                zza = zza((Bundle) zzef.zza(parcel, Bundle.CREATOR));
                break;
            case 7:
                zza = zza((Account) zzef.zza(parcel, Account.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        zzef.zzb(parcel2, zza);
        return true;
    }
}
