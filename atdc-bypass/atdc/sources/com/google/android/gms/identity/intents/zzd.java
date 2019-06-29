package com.google.android.gms.identity.intents;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.identity.intents.model.CountrySpecification;
import java.util.List;

public final class zzd implements Creator<UserAddressRequest> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        List list = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 2) {
                zzb.zzb(parcel, readInt);
            } else {
                list = zzb.zzc(parcel, readInt, CountrySpecification.CREATOR);
            }
        }
        zzb.zzF(parcel, zzd);
        return new UserAddressRequest(list);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new UserAddressRequest[i];
    }
}
