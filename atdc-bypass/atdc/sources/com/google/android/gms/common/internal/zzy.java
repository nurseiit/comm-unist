package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.zzc;

public final class zzy implements Creator<zzx> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        String str = null;
        IBinder iBinder = str;
        Scope[] scopeArr = iBinder;
        Bundle bundle = scopeArr;
        Account account = bundle;
        zzc[] zzcArr = account;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = zzb.zzg(parcel, readInt);
                    break;
                case 2:
                    i2 = zzb.zzg(parcel, readInt);
                    break;
                case 3:
                    i3 = zzb.zzg(parcel, readInt);
                    break;
                case 4:
                    str = zzb.zzq(parcel, readInt);
                    break;
                case 5:
                    iBinder = zzb.zzr(parcel, readInt);
                    break;
                case 6:
                    scopeArr = (Scope[]) zzb.zzb(parcel, readInt, Scope.CREATOR);
                    break;
                case 7:
                    bundle = zzb.zzs(parcel, readInt);
                    break;
                case 8:
                    account = (Account) zzb.zza(parcel, readInt, Account.CREATOR);
                    break;
                case 10:
                    zzcArr = (zzc[]) zzb.zzb(parcel, readInt, zzc.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, readInt);
                    break;
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzx(i, i2, i3, str, iBinder, scopeArr, bundle, account, zzcArr);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzx[i];
    }
}
