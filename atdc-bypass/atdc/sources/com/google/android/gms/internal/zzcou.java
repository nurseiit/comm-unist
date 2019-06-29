package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzcou implements Creator<zzcot> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        IBinder iBinder = null;
        IBinder iBinder2 = iBinder;
        IBinder iBinder3 = iBinder2;
        String str = iBinder3;
        String str2 = str;
        byte[] bArr = str2;
        IBinder iBinder4 = bArr;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    iBinder = zzb.zzr(parcel, readInt);
                    break;
                case 2:
                    iBinder2 = zzb.zzr(parcel, readInt);
                    break;
                case 3:
                    iBinder3 = zzb.zzr(parcel, readInt);
                    break;
                case 4:
                    str = zzb.zzq(parcel, readInt);
                    break;
                case 5:
                    str2 = zzb.zzq(parcel, readInt);
                    break;
                case 6:
                    bArr = zzb.zzt(parcel, readInt);
                    break;
                case 7:
                    iBinder4 = zzb.zzr(parcel, readInt);
                    break;
                default:
                    zzb.zzb(parcel, readInt);
                    break;
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzcot(iBinder, iBinder2, iBinder3, str, str2, bArr, iBinder4);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzcot[i];
    }
}
