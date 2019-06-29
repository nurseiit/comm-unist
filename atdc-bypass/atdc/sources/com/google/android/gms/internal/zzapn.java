package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzapn implements Creator<zzapl> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        zzaoz zzaoz = null;
        String str = zzaoz;
        zzaow zzaow = str;
        long j = 0;
        int i = 0;
        boolean z = false;
        int i2 = -1;
        int i3 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    zzaoz = (zzaoz) zzb.zza(parcel2, readInt, zzaoz.CREATOR);
                    break;
                case 2:
                    j = zzb.zzi(parcel2, readInt);
                    break;
                case 3:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 4:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 5:
                    zzaow = (zzaow) zzb.zza(parcel2, readInt, zzaow.CREATOR);
                    break;
                case 6:
                    z = zzb.zzc(parcel2, readInt);
                    break;
                case 7:
                    i2 = zzb.zzg(parcel2, readInt);
                    break;
                case 8:
                    i3 = zzb.zzg(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new zzapl(zzaoz, j, i, str, zzaow, z, i2, i3);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzapl[i];
    }
}
