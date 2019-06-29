package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.List;

public final class zzl implements Creator<PolylineOptions> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        List list = null;
        Cap cap = list;
        Cap cap2 = cap;
        List list2 = cap2;
        float f = 0.0f;
        int i = 0;
        float f2 = 0.0f;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    list = zzb.zzc(parcel2, readInt, LatLng.CREATOR);
                    break;
                case 3:
                    f = zzb.zzl(parcel2, readInt);
                    break;
                case 4:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 5:
                    f2 = zzb.zzl(parcel2, readInt);
                    break;
                case 6:
                    z = zzb.zzc(parcel2, readInt);
                    break;
                case 7:
                    z2 = zzb.zzc(parcel2, readInt);
                    break;
                case 8:
                    z3 = zzb.zzc(parcel2, readInt);
                    break;
                case 9:
                    cap = (Cap) zzb.zza(parcel2, readInt, Cap.CREATOR);
                    break;
                case 10:
                    cap2 = (Cap) zzb.zza(parcel2, readInt, Cap.CREATOR);
                    break;
                case 11:
                    i2 = zzb.zzg(parcel2, readInt);
                    break;
                case 12:
                    list2 = zzb.zzc(parcel2, readInt, PatternItem.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new PolylineOptions(list, f, i, f2, z, z2, z3, cap, cap2, i2, list2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new PolylineOptions[i];
    }
}
