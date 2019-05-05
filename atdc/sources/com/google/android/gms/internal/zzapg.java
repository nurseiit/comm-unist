package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.List;

public final class zzapg implements Creator<zzapf> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        Status status = null;
        List list = null;
        String[] strArr = list;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    status = (Status) zzb.zza(parcel, readInt, Status.CREATOR);
                    break;
                case 2:
                    list = zzb.zzc(parcel, readInt, zzapl.CREATOR);
                    break;
                case 3:
                    strArr = zzb.zzA(parcel, readInt);
                    break;
                default:
                    zzb.zzb(parcel, readInt);
                    break;
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzapf(status, list, strArr);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzapf[i];
    }
}
