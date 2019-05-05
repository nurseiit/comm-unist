package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzazv implements Creator<zzazu> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        zzbak zzbak = null;
        byte[] bArr = zzbak;
        int[] iArr = bArr;
        String[] strArr = iArr;
        int[] iArr2 = strArr;
        byte[][] bArr2 = iArr2;
        zzcqn[] zzcqnArr = bArr2;
        boolean z = true;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    zzbak = (zzbak) zzb.zza(parcel, readInt, zzbak.CREATOR);
                    break;
                case 3:
                    bArr = zzb.zzt(parcel, readInt);
                    break;
                case 4:
                    iArr = zzb.zzw(parcel, readInt);
                    break;
                case 5:
                    strArr = zzb.zzA(parcel, readInt);
                    break;
                case 6:
                    iArr2 = zzb.zzw(parcel, readInt);
                    break;
                case 7:
                    bArr2 = zzb.zzu(parcel, readInt);
                    break;
                case 8:
                    z = zzb.zzc(parcel, readInt);
                    break;
                case 9:
                    zzcqnArr = (zzcqn[]) zzb.zzb(parcel, readInt, zzcqn.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, readInt);
                    break;
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzazu(zzbak, bArr, iArr, strArr, iArr2, bArr2, z, zzcqnArr);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzazu[i];
    }
}
