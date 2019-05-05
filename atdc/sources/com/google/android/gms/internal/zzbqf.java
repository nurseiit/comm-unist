package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.query.internal.FilterHolder;

public final class zzbqf implements Creator<zzbqe> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        String str = null;
        String[] strArr = null;
        DriveId driveId = strArr;
        FilterHolder filterHolder = driveId;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = zzb.zzq(parcel, readInt);
                    break;
                case 3:
                    strArr = zzb.zzA(parcel, readInt);
                    break;
                case 4:
                    driveId = (DriveId) zzb.zza(parcel, readInt, DriveId.CREATOR);
                    break;
                case 5:
                    filterHolder = (FilterHolder) zzb.zza(parcel, readInt, FilterHolder.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, readInt);
                    break;
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzbqe(str, strArr, driveId, filterHolder);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbqe[i];
    }
}
