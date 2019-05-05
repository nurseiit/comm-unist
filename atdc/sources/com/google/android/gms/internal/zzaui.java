package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzaui implements Creator<zzauh> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        int[] iArr = null;
        float f = 0.0f;
        float f2 = 0.0f;
        float f3 = 0.0f;
        int i = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    f = zzb.zzl(parcel, readInt);
                    break;
                case 3:
                    f2 = zzb.zzl(parcel, readInt);
                    break;
                case 4:
                    f3 = zzb.zzl(parcel, readInt);
                    break;
                case 5:
                    i = zzb.zzg(parcel, readInt);
                    break;
                case 6:
                    iArr = zzb.zzw(parcel, readInt);
                    break;
                default:
                    zzb.zzb(parcel, readInt);
                    break;
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzauh(f, f2, f3, i, iArr);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzauh[i];
    }
}
