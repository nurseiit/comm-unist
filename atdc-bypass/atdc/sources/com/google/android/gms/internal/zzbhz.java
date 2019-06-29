package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.List;

public final class zzbhz implements Creator<zzbhy> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        String str = null;
        DataHolder dataHolder = str;
        String str2 = dataHolder;
        String str3 = str2;
        String str4 = str3;
        List list = str4;
        List list2 = list;
        long j = 0;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 3:
                    j = zzb.zzi(parcel2, readInt);
                    break;
                case 4:
                    dataHolder = (DataHolder) zzb.zza(parcel2, readInt, DataHolder.CREATOR);
                    break;
                case 5:
                    str2 = zzb.zzq(parcel2, readInt);
                    break;
                case 6:
                    str3 = zzb.zzq(parcel2, readInt);
                    break;
                case 7:
                    str4 = zzb.zzq(parcel2, readInt);
                    break;
                case 8:
                    list = zzb.zzC(parcel2, readInt);
                    break;
                case 9:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 10:
                    list2 = zzb.zzc(parcel2, readInt, zzbhi.CREATOR);
                    break;
                case 11:
                    i2 = zzb.zzg(parcel2, readInt);
                    break;
                case 12:
                    i3 = zzb.zzg(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new zzbhy(str, j, dataHolder, str2, str3, str4, list, i, list2, i2, i3);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbhy[i];
    }
}
