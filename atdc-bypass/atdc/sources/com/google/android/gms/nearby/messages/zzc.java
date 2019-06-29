package com.google.android.gms.nearby.messages;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzcph;
import com.google.android.gms.internal.zzcpl;
import com.google.android.gms.nearby.messages.internal.zzad;
import java.util.List;

public final class zzc implements Creator<MessageFilter> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        List list = null;
        List list2 = list;
        List list3 = list2;
        int i = 0;
        boolean z = false;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 != 1000) {
                switch (i3) {
                    case 1:
                        list = zzb.zzc(parcel, readInt, zzad.CREATOR);
                        break;
                    case 2:
                        list2 = zzb.zzc(parcel, readInt, zzcpl.CREATOR);
                        break;
                    case 3:
                        z = zzb.zzc(parcel, readInt);
                        break;
                    case 4:
                        list3 = zzb.zzc(parcel, readInt, zzcph.CREATOR);
                        break;
                    case 5:
                        i2 = zzb.zzg(parcel, readInt);
                        break;
                    default:
                        zzb.zzb(parcel, readInt);
                        break;
                }
            }
            i = zzb.zzg(parcel, readInt);
        }
        zzb.zzF(parcel, zzd);
        return new MessageFilter(i, list, list2, z, list3, i2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new MessageFilter[i];
    }
}
