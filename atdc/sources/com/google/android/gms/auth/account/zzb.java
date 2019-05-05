package com.google.android.gms.auth.account;

import android.accounts.Account;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzee;
import com.google.android.gms.internal.zzef;

public abstract class zzb extends zzee implements zza {
    public zzb() {
        attachInterface(this, "com.google.android.gms.auth.account.IWorkAccountCallback");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                zzd((Account) zzef.zza(parcel, Account.CREATOR));
                return true;
            case 2:
                zzN(zzef.zza(parcel));
                return true;
            default:
                return false;
        }
    }
}
