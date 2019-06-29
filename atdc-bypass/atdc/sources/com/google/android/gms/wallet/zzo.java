package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.wallet.wobs.zze;
import com.google.android.gms.wallet.wobs.zzg;
import com.google.android.gms.wallet.wobs.zzk;
import com.google.android.gms.wallet.wobs.zzm;
import com.google.android.gms.wallet.wobs.zzq;
import java.util.ArrayList;

public final class zzo implements Creator<LoyaltyWalletObject> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = arrayList;
        ArrayList arrayList6 = arrayList2;
        ArrayList arrayList7 = arrayList3;
        ArrayList arrayList8 = arrayList4;
        ArrayList arrayList9 = new ArrayList();
        ArrayList arrayList10 = new ArrayList();
        String str = null;
        String str2 = str;
        String str3 = str2;
        String str4 = str3;
        String str5 = str4;
        String str6 = str5;
        String str7 = str6;
        String str8 = str7;
        String str9 = str8;
        String str10 = str9;
        zzm zzm = str10;
        String str11 = zzm;
        String str12 = str11;
        zzg zzg = str12;
        int i = 0;
        boolean z = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 3:
                    str2 = zzb.zzq(parcel2, readInt);
                    break;
                case 4:
                    str3 = zzb.zzq(parcel2, readInt);
                    break;
                case 5:
                    str4 = zzb.zzq(parcel2, readInt);
                    break;
                case 6:
                    str5 = zzb.zzq(parcel2, readInt);
                    break;
                case 7:
                    str6 = zzb.zzq(parcel2, readInt);
                    break;
                case 8:
                    str7 = zzb.zzq(parcel2, readInt);
                    break;
                case 9:
                    str8 = zzb.zzq(parcel2, readInt);
                    break;
                case 10:
                    str9 = zzb.zzq(parcel2, readInt);
                    break;
                case 11:
                    str10 = zzb.zzq(parcel2, readInt);
                    break;
                case 12:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 13:
                    arrayList5 = zzb.zzc(parcel2, readInt, zzq.CREATOR);
                    break;
                case 14:
                    zzm = (zzm) zzb.zza(parcel2, readInt, zzm.CREATOR);
                    break;
                case 15:
                    arrayList6 = zzb.zzc(parcel2, readInt, LatLng.CREATOR);
                    break;
                case 16:
                    str11 = zzb.zzq(parcel2, readInt);
                    break;
                case 17:
                    str12 = zzb.zzq(parcel2, readInt);
                    break;
                case 18:
                    arrayList7 = zzb.zzc(parcel2, readInt, zze.CREATOR);
                    break;
                case 19:
                    z = zzb.zzc(parcel2, readInt);
                    break;
                case 20:
                    arrayList8 = zzb.zzc(parcel2, readInt, com.google.android.gms.wallet.wobs.zzo.CREATOR);
                    break;
                case 21:
                    arrayList9 = zzb.zzc(parcel2, readInt, zzk.CREATOR);
                    break;
                case 22:
                    arrayList10 = zzb.zzc(parcel2, readInt, com.google.android.gms.wallet.wobs.zzo.CREATOR);
                    break;
                case 23:
                    zzg = (zzg) zzb.zza(parcel2, readInt, zzg.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new LoyaltyWalletObject(str, str2, str3, str4, str5, str6, str7, str8, str9, str10, i, arrayList5, zzm, arrayList6, str11, str12, arrayList7, z, arrayList8, arrayList9, arrayList10, zzg);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new LoyaltyWalletObject[i];
    }
}
