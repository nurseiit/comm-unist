package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzw implements Creator<SignInConfiguration> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        String str = null;
        int i = 0;
        GoogleSignInOptions googleSignInOptions = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 != 5) {
                switch (i2) {
                    case 1:
                        i = zzb.zzg(parcel, readInt);
                        break;
                    case 2:
                        str = zzb.zzq(parcel, readInt);
                        break;
                    default:
                        zzb.zzb(parcel, readInt);
                        break;
                }
            }
            googleSignInOptions = (GoogleSignInOptions) zzb.zza(parcel, readInt, GoogleSignInOptions.CREATOR);
        }
        zzb.zzF(parcel, zzd);
        return new SignInConfiguration(i, str, googleSignInOptions);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new SignInConfiguration[i];
    }
}
