package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.List;

public final class zzd implements Creator<WakeLockEvent> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        long j = 0;
        long j2 = j;
        long j3 = j2;
        String str = null;
        List list = str;
        String str2 = list;
        String str3 = str2;
        String str4 = str3;
        String str5 = str4;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        float f = 0.0f;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 2:
                    j = zzb.zzi(parcel2, readInt);
                    break;
                case 4:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 5:
                    i3 = zzb.zzg(parcel2, readInt);
                    break;
                case 6:
                    list = zzb.zzC(parcel2, readInt);
                    break;
                case 8:
                    j2 = zzb.zzi(parcel2, readInt);
                    break;
                case 10:
                    str3 = zzb.zzq(parcel2, readInt);
                    break;
                case 11:
                    i2 = zzb.zzg(parcel2, readInt);
                    break;
                case 12:
                    str2 = zzb.zzq(parcel2, readInt);
                    break;
                case 13:
                    str4 = zzb.zzq(parcel2, readInt);
                    break;
                case 14:
                    i4 = zzb.zzg(parcel2, readInt);
                    break;
                case 15:
                    f = zzb.zzl(parcel2, readInt);
                    break;
                case 16:
                    j3 = zzb.zzi(parcel2, readInt);
                    break;
                case 17:
                    str5 = zzb.zzq(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new WakeLockEvent(i, j, i2, str, i3, list, str2, j2, i4, str3, str4, f, j3, str5);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new WakeLockEvent[i];
    }
}
