package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.DriveId;

public final class zzbpg implements Creator<zzbpf> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        DriveId driveId = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            if ((65535 & readInt) != 2) {
                zzb.zzb(parcel, readInt);
            } else {
                driveId = (DriveId) zzb.zza(parcel, readInt, DriveId.CREATOR);
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzbpf(driveId);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbpf[i];
    }
}
