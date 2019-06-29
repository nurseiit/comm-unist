package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.auth.AccountChangeEventsRequest;
import com.google.android.gms.auth.AccountChangeEventsResponse;

public final class zzei extends zzed implements zzeg {
    zzei(IBinder iBinder) {
        super(iBinder, "com.google.android.auth.IAuthManagerService");
    }

    public final Bundle zza(Account account) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) account);
        Parcel zza = zza(7, zzZ);
        Bundle bundle = (Bundle) zzef.zza(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    public final Bundle zza(Account account, String str, Bundle bundle) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) account);
        zzZ.writeString(str);
        zzef.zza(zzZ, (Parcelable) bundle);
        Parcel zza = zza(5, zzZ);
        Bundle bundle2 = (Bundle) zzef.zza(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle2;
    }

    public final Bundle zza(Bundle bundle) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) bundle);
        Parcel zza = zza(6, zzZ);
        Bundle bundle2 = (Bundle) zzef.zza(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle2;
    }

    public final Bundle zza(String str, Bundle bundle) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (Parcelable) bundle);
        Parcel zza = zza(2, zzZ);
        bundle = (Bundle) zzef.zza(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    public final Bundle zza(String str, String str2, Bundle bundle) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzef.zza(zzZ, (Parcelable) bundle);
        Parcel zza = zza(1, zzZ);
        Bundle bundle2 = (Bundle) zzef.zza(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle2;
    }

    public final AccountChangeEventsResponse zza(AccountChangeEventsRequest accountChangeEventsRequest) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) accountChangeEventsRequest);
        Parcel zza = zza(3, zzZ);
        AccountChangeEventsResponse accountChangeEventsResponse = (AccountChangeEventsResponse) zzef.zza(zza, AccountChangeEventsResponse.CREATOR);
        zza.recycle();
        return accountChangeEventsResponse;
    }
}
