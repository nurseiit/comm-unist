package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzr implements Creator<zzq> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        String str = null;
        String str2 = str;
        zzm zzm = str2;
        zzo zzo = zzm;
        zzo zzo2 = zzo;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = zzb.zzq(parcel, readInt);
                    break;
                case 3:
                    str2 = zzb.zzq(parcel, readInt);
                    break;
                case 4:
                    zzm = (zzm) zzb.zza(parcel, readInt, zzm.CREATOR);
                    break;
                case 5:
                    zzo = (zzo) zzb.zza(parcel, readInt, zzo.CREATOR);
                    break;
                case 6:
                    zzo2 = (zzo) zzb.zza(parcel, readInt, zzo.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, readInt);
                    break;
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzq(str, str2, zzm, zzo, zzo2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzq[i];
    }
}
