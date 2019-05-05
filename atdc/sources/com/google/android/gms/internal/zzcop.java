package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzcop implements Creator<zzcoo> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        long j = 0;
        long j2 = j;
        byte[] bArr = null;
        ParcelFileDescriptor parcelFileDescriptor = bArr;
        String str = parcelFileDescriptor;
        ParcelFileDescriptor parcelFileDescriptor2 = str;
        int i = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    j = zzb.zzi(parcel2, readInt);
                    break;
                case 2:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 3:
                    bArr = zzb.zzt(parcel2, readInt);
                    break;
                case 4:
                    parcelFileDescriptor = (ParcelFileDescriptor) zzb.zza(parcel2, readInt, ParcelFileDescriptor.CREATOR);
                    break;
                case 5:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 6:
                    j2 = zzb.zzi(parcel2, readInt);
                    break;
                case 7:
                    parcelFileDescriptor2 = (ParcelFileDescriptor) zzb.zza(parcel2, readInt, ParcelFileDescriptor.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new zzcoo(j, i, bArr, parcelFileDescriptor, str, j2, parcelFileDescriptor2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzcoo[i];
    }
}
