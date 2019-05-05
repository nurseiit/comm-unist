package com.google.firebase.auth;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.firebase.auth.PhoneAuthProvider.ForceResendingToken;

public final class zza implements Creator<ForceResendingToken> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        while (parcel.dataPosition() < zzd) {
            zzb.zzb(parcel, parcel.readInt());
        }
        zzb.zzF(parcel, zzd);
        return new ForceResendingToken();
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new ForceResendingToken[i];
    }
}
