package com.google.android.gms.fitness.data;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzai implements Creator<Value> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        String str = null;
        Bundle bundle = str;
        int[] iArr = bundle;
        float[] fArr = iArr;
        byte[] bArr = fArr;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        float f = 0.0f;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 != 1000) {
                switch (i3) {
                    case 1:
                        i2 = zzb.zzg(parcel, readInt);
                        break;
                    case 2:
                        z = zzb.zzc(parcel, readInt);
                        break;
                    case 3:
                        f = zzb.zzl(parcel, readInt);
                        break;
                    case 4:
                        str = zzb.zzq(parcel, readInt);
                        break;
                    case 5:
                        bundle = zzb.zzs(parcel, readInt);
                        break;
                    case 6:
                        iArr = zzb.zzw(parcel, readInt);
                        break;
                    case 7:
                        fArr = zzb.zzy(parcel, readInt);
                        break;
                    case 8:
                        bArr = zzb.zzt(parcel, readInt);
                        break;
                    default:
                        zzb.zzb(parcel, readInt);
                        break;
                }
            }
            i = zzb.zzg(parcel, readInt);
        }
        zzb.zzF(parcel, zzd);
        return new Value(i, i2, z, f, str, bundle, iArr, fArr, bArr);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new Value[i];
    }
}
