package com.google.firebase.auth;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zze implements Creator<FacebookAuthCredential> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        String str = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 1) {
                zzb.zzb(parcel, readInt);
            } else {
                str = zzb.zzq(parcel, readInt);
            }
        }
        zzb.zzF(parcel, zzd);
        return new FacebookAuthCredential(str);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new FacebookAuthCredential[i];
    }
}
