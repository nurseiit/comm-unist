package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.identity.intents.model.UserAddress;

public final class zzf implements Creator<FullWallet> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        String str = null;
        String str2 = str;
        ProxyCard proxyCard = str2;
        String str3 = proxyCard;
        zza zza = str3;
        zza zza2 = zza;
        String[] strArr = zza2;
        UserAddress userAddress = strArr;
        UserAddress userAddress2 = userAddress;
        InstrumentInfo[] instrumentInfoArr = userAddress2;
        PaymentMethodToken paymentMethodToken = instrumentInfoArr;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = zzb.zzq(parcel, readInt);
                    break;
                case 3:
                    str2 = zzb.zzq(parcel, readInt);
                    break;
                case 4:
                    proxyCard = (ProxyCard) zzb.zza(parcel, readInt, ProxyCard.CREATOR);
                    break;
                case 5:
                    str3 = zzb.zzq(parcel, readInt);
                    break;
                case 6:
                    zza = (zza) zzb.zza(parcel, readInt, zza.CREATOR);
                    break;
                case 7:
                    zza2 = (zza) zzb.zza(parcel, readInt, zza.CREATOR);
                    break;
                case 8:
                    strArr = zzb.zzA(parcel, readInt);
                    break;
                case 9:
                    userAddress = (UserAddress) zzb.zza(parcel, readInt, UserAddress.CREATOR);
                    break;
                case 10:
                    userAddress2 = (UserAddress) zzb.zza(parcel, readInt, UserAddress.CREATOR);
                    break;
                case 11:
                    instrumentInfoArr = (InstrumentInfo[]) zzb.zzb(parcel, readInt, InstrumentInfo.CREATOR);
                    break;
                case 12:
                    paymentMethodToken = (PaymentMethodToken) zzb.zza(parcel, readInt, PaymentMethodToken.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, readInt);
                    break;
            }
        }
        zzb.zzF(parcel, zzd);
        return new FullWallet(str, str2, proxyCard, str3, zza, zza2, strArr, userAddress, userAddress2, instrumentInfoArr, paymentMethodToken);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new FullWallet[i];
    }
}
