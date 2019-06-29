package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zze implements Creator<SignInAccount> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        String str = "";
        String str2 = "";
        int i = 0;
        GoogleSignInAccount googleSignInAccount = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = zzb.zzg(parcel, readInt);
            } else if (i2 != 4) {
                switch (i2) {
                    case 7:
                        googleSignInAccount = (GoogleSignInAccount) zzb.zza(parcel, readInt, GoogleSignInAccount.CREATOR);
                        break;
                    case 8:
                        str2 = zzb.zzq(parcel, readInt);
                        break;
                    default:
                        zzb.zzb(parcel, readInt);
                        break;
                }
            } else {
                str = zzb.zzq(parcel, readInt);
            }
        }
        zzb.zzF(parcel, zzd);
        return new SignInAccount(i, str, googleSignInAccount, str2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new SignInAccount[i];
    }
}
