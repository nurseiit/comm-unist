package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.wallet.wobs.CommonWalletObject;

public final class zzi implements Creator<GiftCardWalletObject> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        long j = 0;
        long j2 = j;
        CommonWalletObject commonWalletObject = null;
        String str = commonWalletObject;
        String str2 = str;
        String str3 = str2;
        String str4 = str3;
        String str5 = str4;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    commonWalletObject = (CommonWalletObject) zzb.zza(parcel2, readInt, CommonWalletObject.CREATOR);
                    break;
                case 3:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 4:
                    str2 = zzb.zzq(parcel2, readInt);
                    break;
                case 5:
                    str3 = zzb.zzq(parcel2, readInt);
                    break;
                case 6:
                    j = zzb.zzi(parcel2, readInt);
                    break;
                case 7:
                    str4 = zzb.zzq(parcel2, readInt);
                    break;
                case 8:
                    j2 = zzb.zzi(parcel2, readInt);
                    break;
                case 9:
                    str5 = zzb.zzq(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new GiftCardWalletObject(commonWalletObject, str, str2, str3, j, str4, j2, str5);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new GiftCardWalletObject[i];
    }
}
