package com.google.android.gms.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.List;

public final class zzaag implements Creator<zzaae> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        long j = 0;
        long j2 = j;
        Bundle bundle = null;
        zzir zzir = bundle;
        zziv zziv = zzir;
        String str = zziv;
        ApplicationInfo applicationInfo = str;
        PackageInfo packageInfo = applicationInfo;
        String str2 = packageInfo;
        String str3 = str2;
        String str4 = str3;
        zzaje zzaje = str4;
        Bundle bundle2 = zzaje;
        List list = bundle2;
        Bundle bundle3 = list;
        String str5 = bundle3;
        String str6 = str5;
        List list2 = str6;
        String str7 = list2;
        zzon zzon = str7;
        List list3 = zzon;
        String str8 = list3;
        String str9 = str8;
        String str10 = str9;
        Bundle bundle4 = str10;
        String str11 = bundle4;
        zzky zzky = str11;
        Bundle bundle5 = zzky;
        String str12 = bundle5;
        String str13 = str12;
        String str14 = str13;
        List list4 = str14;
        String str15 = list4;
        List list5 = str15;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        int i4 = 0;
        float f = 0.0f;
        float f2 = 0.0f;
        boolean z2 = false;
        int i5 = 0;
        int i6 = 0;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        int i7 = 0;
        boolean z6 = false;
        boolean z7 = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 2:
                    bundle = zzb.zzs(parcel2, readInt);
                    break;
                case 3:
                    zzir = (zzir) zzb.zza(parcel2, readInt, zzir.CREATOR);
                    break;
                case 4:
                    zziv = (zziv) zzb.zza(parcel2, readInt, zziv.CREATOR);
                    break;
                case 5:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 6:
                    applicationInfo = (ApplicationInfo) zzb.zza(parcel2, readInt, ApplicationInfo.CREATOR);
                    break;
                case 7:
                    packageInfo = (PackageInfo) zzb.zza(parcel2, readInt, PackageInfo.CREATOR);
                    break;
                case 8:
                    str2 = zzb.zzq(parcel2, readInt);
                    break;
                case 9:
                    str3 = zzb.zzq(parcel2, readInt);
                    break;
                case 10:
                    str4 = zzb.zzq(parcel2, readInt);
                    break;
                case 11:
                    zzaje = (zzaje) zzb.zza(parcel2, readInt, zzaje.CREATOR);
                    break;
                case 12:
                    bundle2 = zzb.zzs(parcel2, readInt);
                    break;
                case 13:
                    i2 = zzb.zzg(parcel2, readInt);
                    break;
                case 14:
                    list = zzb.zzC(parcel2, readInt);
                    break;
                case 15:
                    bundle3 = zzb.zzs(parcel2, readInt);
                    break;
                case 16:
                    z = zzb.zzc(parcel2, readInt);
                    break;
                case 18:
                    i3 = zzb.zzg(parcel2, readInt);
                    break;
                case 19:
                    i4 = zzb.zzg(parcel2, readInt);
                    break;
                case 20:
                    f = zzb.zzl(parcel2, readInt);
                    break;
                case 21:
                    str5 = zzb.zzq(parcel2, readInt);
                    break;
                case 25:
                    j = zzb.zzi(parcel2, readInt);
                    break;
                case 26:
                    str6 = zzb.zzq(parcel2, readInt);
                    break;
                case 27:
                    list2 = zzb.zzC(parcel2, readInt);
                    break;
                case 28:
                    str7 = zzb.zzq(parcel2, readInt);
                    break;
                case 29:
                    zzon = (zzon) zzb.zza(parcel2, readInt, zzon.CREATOR);
                    break;
                case 30:
                    list3 = zzb.zzC(parcel2, readInt);
                    break;
                case 31:
                    j2 = zzb.zzi(parcel2, readInt);
                    break;
                case 33:
                    str8 = zzb.zzq(parcel2, readInt);
                    break;
                case 34:
                    f2 = zzb.zzl(parcel2, readInt);
                    break;
                case 35:
                    i5 = zzb.zzg(parcel2, readInt);
                    break;
                case 36:
                    i6 = zzb.zzg(parcel2, readInt);
                    break;
                case 37:
                    z3 = zzb.zzc(parcel2, readInt);
                    break;
                case 38:
                    z4 = zzb.zzc(parcel2, readInt);
                    break;
                case 39:
                    str9 = zzb.zzq(parcel2, readInt);
                    break;
                case 40:
                    z2 = zzb.zzc(parcel2, readInt);
                    break;
                case 41:
                    str10 = zzb.zzq(parcel2, readInt);
                    break;
                case 42:
                    z5 = zzb.zzc(parcel2, readInt);
                    break;
                case 43:
                    i7 = zzb.zzg(parcel2, readInt);
                    break;
                case 44:
                    bundle4 = zzb.zzs(parcel2, readInt);
                    break;
                case 45:
                    str11 = zzb.zzq(parcel2, readInt);
                    break;
                case 46:
                    zzky = (zzky) zzb.zza(parcel2, readInt, zzky.CREATOR);
                    break;
                case 47:
                    z6 = zzb.zzc(parcel2, readInt);
                    break;
                case 48:
                    bundle5 = zzb.zzs(parcel2, readInt);
                    break;
                case 49:
                    str12 = zzb.zzq(parcel2, readInt);
                    break;
                case 50:
                    str13 = zzb.zzq(parcel2, readInt);
                    break;
                case 51:
                    str14 = zzb.zzq(parcel2, readInt);
                    break;
                case 52:
                    z7 = zzb.zzc(parcel2, readInt);
                    break;
                case 53:
                    list4 = zzb.zzB(parcel2, readInt);
                    break;
                case 54:
                    str15 = zzb.zzq(parcel2, readInt);
                    break;
                case 55:
                    list5 = zzb.zzC(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new zzaae(i, bundle, zzir, zziv, str, applicationInfo, packageInfo, str2, str3, str4, zzaje, bundle2, i2, list, bundle3, z, i3, i4, f, str5, j, str6, list2, str7, zzon, list3, j2, str8, f2, z2, i5, i6, z3, z4, str9, str10, z5, i7, bundle4, str11, zzky, z6, bundle5, str12, str13, str14, z7, list4, str15, list5);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzaae[i];
    }
}
