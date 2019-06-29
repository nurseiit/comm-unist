package com.google.android.gms.nearby.messages;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzcpj;

public final class zza implements Creator<Message> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        byte[] bArr = null;
        String str = bArr;
        String str2 = str;
        zzcpj[] zzcpjArr = str2;
        long j = 0;
        int i = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 != 1000) {
                switch (i2) {
                    case 1:
                        bArr = zzb.zzt(parcel, readInt);
                        break;
                    case 2:
                        str2 = zzb.zzq(parcel, readInt);
                        break;
                    case 3:
                        str = zzb.zzq(parcel, readInt);
                        break;
                    case 4:
                        zzcpjArr = (zzcpj[]) zzb.zzb(parcel, readInt, zzcpj.CREATOR);
                        break;
                    case 5:
                        j = zzb.zzi(parcel, readInt);
                        break;
                    default:
                        zzb.zzb(parcel, readInt);
                        break;
                }
            }
            i = zzb.zzg(parcel, readInt);
        }
        zzb.zzF(parcel, zzd);
        return new Message(i, bArr, str, str2, zzcpjArr, j);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new Message[i];
    }
}
