package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.identity.intents.model.CountrySpecification;
import java.util.ArrayList;

public final class zzs implements Creator<MaskedWalletRequest> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        String str = null;
        String str2 = str;
        String str3 = str2;
        String str4 = str3;
        Cart cart = str4;
        CountrySpecification[] countrySpecificationArr = cart;
        ArrayList arrayList = countrySpecificationArr;
        PaymentMethodTokenizationParameters paymentMethodTokenizationParameters = arrayList;
        ArrayList arrayList2 = paymentMethodTokenizationParameters;
        String str5 = arrayList2;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = true;
        boolean z7 = true;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 3:
                    z = zzb.zzc(parcel2, readInt);
                    break;
                case 4:
                    z2 = zzb.zzc(parcel2, readInt);
                    break;
                case 5:
                    z3 = zzb.zzc(parcel2, readInt);
                    break;
                case 6:
                    str2 = zzb.zzq(parcel2, readInt);
                    break;
                case 7:
                    str3 = zzb.zzq(parcel2, readInt);
                    break;
                case 8:
                    str4 = zzb.zzq(parcel2, readInt);
                    break;
                case 9:
                    cart = (Cart) zzb.zza(parcel2, readInt, Cart.CREATOR);
                    break;
                case 10:
                    z4 = zzb.zzc(parcel2, readInt);
                    break;
                case 11:
                    z5 = zzb.zzc(parcel2, readInt);
                    break;
                case 12:
                    countrySpecificationArr = (CountrySpecification[]) zzb.zzb(parcel2, readInt, CountrySpecification.CREATOR);
                    break;
                case 13:
                    z6 = zzb.zzc(parcel2, readInt);
                    break;
                case 14:
                    z7 = zzb.zzc(parcel2, readInt);
                    break;
                case 15:
                    arrayList = zzb.zzc(parcel2, readInt, CountrySpecification.CREATOR);
                    break;
                case 16:
                    paymentMethodTokenizationParameters = (PaymentMethodTokenizationParameters) zzb.zza(parcel2, readInt, PaymentMethodTokenizationParameters.CREATOR);
                    break;
                case 17:
                    arrayList2 = zzb.zzB(parcel2, readInt);
                    break;
                case 18:
                    str5 = zzb.zzq(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new MaskedWalletRequest(str, z, z2, z3, str2, str3, str4, cart, z4, z5, countrySpecificationArr, z6, z7, arrayList, paymentMethodTokenizationParameters, arrayList2, str5);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new MaskedWalletRequest[i];
    }
}
