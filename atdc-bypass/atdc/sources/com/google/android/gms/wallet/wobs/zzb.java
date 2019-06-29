package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.LatLng;
import java.util.ArrayList;

public final class zzb implements Creator<CommonWalletObject> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = com.google.android.gms.common.internal.safeparcel.zzb.zzd(parcel);
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
        zzm zzm = str8;
        String str9 = zzm;
        String str10 = str9;
        int i = 0;
        boolean z = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, readInt);
                    break;
                case 3:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, readInt);
                    break;
                case 4:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, readInt);
                    break;
                case 5:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, readInt);
                    break;
                case 6:
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, readInt);
                    break;
                case 7:
                    str6 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, readInt);
                    break;
                case 8:
                    str7 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, readInt);
                    break;
                case 9:
                    str8 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, readInt);
                    break;
                case 10:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel2, readInt);
                    break;
                case 11:
                    arrayList5 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel2, readInt, zzq.CREATOR);
                    break;
                case 12:
                    zzm = (zzm) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel2, readInt, zzm.CREATOR);
                    break;
                case 13:
                    arrayList6 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel2, readInt, LatLng.CREATOR);
                    break;
                case 14:
                    str9 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, readInt);
                    break;
                case 15:
                    str10 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, readInt);
                    break;
                case 16:
                    arrayList7 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel2, readInt, zze.CREATOR);
                    break;
                case 17:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel2, readInt);
                    break;
                case 18:
                    arrayList8 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel2, readInt, zzo.CREATOR);
                    break;
                case 19:
                    arrayList9 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel2, readInt, zzk.CREATOR);
                    break;
                case 20:
                    arrayList10 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel2, readInt, zzo.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.zzb.zzF(parcel2, zzd);
        return new CommonWalletObject(str, str2, str3, str4, str5, str6, str7, str8, i, arrayList5, zzm, arrayList6, str9, str10, arrayList7, z, arrayList8, arrayList9, arrayList10);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new CommonWalletObject[i];
    }
}
