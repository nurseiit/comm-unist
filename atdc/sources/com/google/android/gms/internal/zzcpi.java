package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.ParcelUuid;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzcpi implements Creator<zzcph> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        ParcelUuid parcelUuid = null;
        ParcelUuid parcelUuid2 = parcelUuid;
        ParcelUuid parcelUuid3 = parcelUuid2;
        byte[] bArr = parcelUuid3;
        byte[] bArr2 = bArr;
        byte[] bArr3 = bArr2;
        byte[] bArr4 = bArr3;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 != 1) {
                switch (i3) {
                    case 4:
                        parcelUuid = (ParcelUuid) zzb.zza(parcel, readInt, ParcelUuid.CREATOR);
                        break;
                    case 5:
                        parcelUuid2 = (ParcelUuid) zzb.zza(parcel, readInt, ParcelUuid.CREATOR);
                        break;
                    case 6:
                        parcelUuid3 = (ParcelUuid) zzb.zza(parcel, readInt, ParcelUuid.CREATOR);
                        break;
                    case 7:
                        bArr = zzb.zzt(parcel, readInt);
                        break;
                    case 8:
                        bArr2 = zzb.zzt(parcel, readInt);
                        break;
                    case 9:
                        i2 = zzb.zzg(parcel, readInt);
                        break;
                    case 10:
                        bArr3 = zzb.zzt(parcel, readInt);
                        break;
                    case 11:
                        bArr4 = zzb.zzt(parcel, readInt);
                        break;
                    default:
                        zzb.zzb(parcel, readInt);
                        break;
                }
            }
            i = zzb.zzg(parcel, readInt);
        }
        zzb.zzF(parcel, zzd);
        return new zzcph(i, parcelUuid, parcelUuid2, parcelUuid3, bArr, bArr2, i2, bArr3, bArr4);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzcph[i];
    }
}
