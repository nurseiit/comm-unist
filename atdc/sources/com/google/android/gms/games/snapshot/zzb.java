package com.google.android.gms.games.snapshot;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.drive.zzc;

public final class zzb implements Creator<zza> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = com.google.android.gms.common.internal.safeparcel.zzb.zzd(parcel);
        zzc zzc = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 1) {
                com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, readInt);
            } else {
                zzc = (zzc) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, readInt, zzc.CREATOR);
            }
        }
        com.google.android.gms.common.internal.safeparcel.zzb.zzF(parcel, zzd);
        return new zza(zzc);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zza[i];
    }
}
