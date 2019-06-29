package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzcqt implements Creator<zzcqn> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        String str = null;
        byte[] bArr = str;
        byte[][] bArr2 = bArr;
        byte[][] bArr3 = bArr2;
        byte[][] bArr4 = bArr3;
        byte[][] bArr5 = bArr4;
        int[] iArr = bArr5;
        byte[][] bArr6 = iArr;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = zzb.zzq(parcel, readInt);
                    break;
                case 3:
                    bArr = zzb.zzt(parcel, readInt);
                    break;
                case 4:
                    bArr2 = zzb.zzu(parcel, readInt);
                    break;
                case 5:
                    bArr3 = zzb.zzu(parcel, readInt);
                    break;
                case 6:
                    bArr4 = zzb.zzu(parcel, readInt);
                    break;
                case 7:
                    bArr5 = zzb.zzu(parcel, readInt);
                    break;
                case 8:
                    iArr = zzb.zzw(parcel, readInt);
                    break;
                case 9:
                    bArr6 = zzb.zzu(parcel, readInt);
                    break;
                default:
                    zzb.zzb(parcel, readInt);
                    break;
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzcqn(str, bArr, bArr2, bArr3, bArr4, bArr5, iArr, bArr6);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzcqn[i];
    }
}
