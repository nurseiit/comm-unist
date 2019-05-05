package com.google.android.gms.internal;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.List;

public final class zzit implements Creator<zzir> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        Bundle bundle = null;
        List list = bundle;
        String str = list;
        zzlt zzlt = str;
        Location location = zzlt;
        String str2 = location;
        Bundle bundle2 = str2;
        Bundle bundle3 = bundle2;
        List list2 = bundle3;
        String str3 = list2;
        String str4 = str3;
        long j = 0;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 2:
                    j = zzb.zzi(parcel2, readInt);
                    break;
                case 3:
                    bundle = zzb.zzs(parcel2, readInt);
                    break;
                case 4:
                    i2 = zzb.zzg(parcel2, readInt);
                    break;
                case 5:
                    list = zzb.zzC(parcel2, readInt);
                    break;
                case 6:
                    z = zzb.zzc(parcel2, readInt);
                    break;
                case 7:
                    i3 = zzb.zzg(parcel2, readInt);
                    break;
                case 8:
                    z2 = zzb.zzc(parcel2, readInt);
                    break;
                case 9:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 10:
                    zzlt = (zzlt) zzb.zza(parcel2, readInt, zzlt.CREATOR);
                    break;
                case 11:
                    location = (Location) zzb.zza(parcel2, readInt, Location.CREATOR);
                    break;
                case 12:
                    str2 = zzb.zzq(parcel2, readInt);
                    break;
                case 13:
                    bundle2 = zzb.zzs(parcel2, readInt);
                    break;
                case 14:
                    bundle3 = zzb.zzs(parcel2, readInt);
                    break;
                case 15:
                    list2 = zzb.zzC(parcel2, readInt);
                    break;
                case 16:
                    str3 = zzb.zzq(parcel2, readInt);
                    break;
                case 17:
                    str4 = zzb.zzq(parcel2, readInt);
                    break;
                case 18:
                    z3 = zzb.zzc(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new zzir(i, j, bundle, i2, list, z, i3, z2, str, zzlt, location, str2, bundle2, bundle3, list2, str3, str4, z3);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzir[i];
    }
}
