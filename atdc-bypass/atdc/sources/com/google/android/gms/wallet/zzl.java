package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;

public final class zzl implements Creator<IsReadyToPayRequest> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        ArrayList arrayList = null;
        String str = null;
        String str2 = str;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i != 2) {
                switch (i) {
                    case 4:
                        str = zzb.zzq(parcel, readInt);
                        break;
                    case 5:
                        str2 = zzb.zzq(parcel, readInt);
                        break;
                    default:
                        zzb.zzb(parcel, readInt);
                        break;
                }
            }
            arrayList = zzb.zzB(parcel, readInt);
        }
        zzb.zzF(parcel, zzd);
        return new IsReadyToPayRequest(arrayList, str, str2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new IsReadyToPayRequest[i];
    }
}
