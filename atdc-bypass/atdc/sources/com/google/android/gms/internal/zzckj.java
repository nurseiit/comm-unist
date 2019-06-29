package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzckj implements Creator<zzcki> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        IBinder iBinder = null;
        IBinder iBinder2 = iBinder;
        String str = iBinder2;
        byte[] bArr = str;
        IBinder iBinder3 = bArr;
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
                    str = zzb.zzq(parcel, readInt);
                    break;
                case 4:
                    bArr = zzb.zzt(parcel, readInt);
                    break;
                case 5:
                    iBinder3 = zzb.zzr(parcel, readInt);
                    break;
                default:
                    zzb.zzb(parcel, readInt);
                    break;
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzcki(iBinder, iBinder2, str, bArr, iBinder3);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzcki[i];
    }
}
