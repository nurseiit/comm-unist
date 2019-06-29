package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzad implements Creator<Session> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        long j = 0;
        long j2 = j;
        String str = null;
        String str2 = str;
        String str3 = str2;
        zzb zzb = str3;
        Long l = zzb;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 != 1000) {
                switch (i3) {
                    case 1:
                        j = zzb.zzi(parcel2, readInt);
                        break;
                    case 2:
                        j2 = zzb.zzi(parcel2, readInt);
                        break;
                    case 3:
                        str = zzb.zzq(parcel2, readInt);
                        break;
                    case 4:
                        str2 = zzb.zzq(parcel2, readInt);
                        break;
                    case 5:
                        str3 = zzb.zzq(parcel2, readInt);
                        break;
                    default:
                        switch (i3) {
                            case 7:
                                i2 = zzb.zzg(parcel2, readInt);
                                break;
                            case 8:
                                zzb = (zzb) zzb.zza(parcel2, readInt, zzb.CREATOR);
                                break;
                            case 9:
                                l = zzb.zzj(parcel2, readInt);
                                break;
                            default:
                                zzb.zzb(parcel2, readInt);
                                break;
                        }
                }
            }
            i = zzb.zzg(parcel2, readInt);
        }
        zzb.zzF(parcel2, zzd);
        return new Session(i, j, j2, str, str2, str3, i2, zzb, l);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new Session[i];
    }
}
