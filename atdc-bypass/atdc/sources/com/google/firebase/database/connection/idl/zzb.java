package com.google.firebase.database.connection.idl;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.List;

public final class zzb implements Creator<zza> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = com.google.android.gms.common.internal.safeparcel.zzb.zzd(parcel);
        List list = null;
        List list2 = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    list = com.google.android.gms.common.internal.safeparcel.zzb.zzC(parcel, readInt);
                    break;
                case 3:
                    list2 = com.google.android.gms.common.internal.safeparcel.zzb.zzC(parcel, readInt);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, readInt);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.zzb.zzF(parcel, zzd);
        return new zza(list, list2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zza[i];
    }
}
