package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzapc implements Creator<zzapb> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        String str = null;
        zzapi zzapi = null;
        byte[] bArr = zzapi;
        int i = -1;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 != 1) {
                switch (i2) {
                    case 3:
                        zzapi = (zzapi) zzb.zza(parcel, readInt, zzapi.CREATOR);
                        break;
                    case 4:
                        i = zzb.zzg(parcel, readInt);
                        break;
                    case 5:
                        bArr = zzb.zzt(parcel, readInt);
                        break;
                    default:
                        zzb.zzb(parcel, readInt);
                        break;
                }
            }
            str = zzb.zzq(parcel, readInt);
        }
        zzb.zzF(parcel, zzd);
        return new zzapb(str, zzapi, i, bArr);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzapb[i];
    }
}
