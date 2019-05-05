package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.zza;
import java.util.List;

public final class zzboy implements Creator<zzbox> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        DataHolder dataHolder = null;
        List list = null;
        zza zza = list;
        boolean z = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    dataHolder = (DataHolder) zzb.zza(parcel, readInt, DataHolder.CREATOR);
                    break;
                case 3:
                    list = zzb.zzc(parcel, readInt, DriveId.CREATOR);
                    break;
                case 4:
                    zza = (zza) zzb.zza(parcel, readInt, zza.CREATOR);
                    break;
                case 5:
                    z = zzb.zzc(parcel, readInt);
                    break;
                default:
                    zzb.zzb(parcel, readInt);
                    break;
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzbox(dataHolder, list, zza, z);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbox[i];
    }
}
