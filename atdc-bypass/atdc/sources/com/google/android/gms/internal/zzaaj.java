package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.List;

public final class zzaaj implements Creator<zzaai> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        long j = 0;
        long j2 = j;
        long j3 = j2;
        long j4 = j3;
        String str = null;
        String str2 = str;
        List list = str2;
        List list2 = list;
        List list3 = list2;
        String str3 = list3;
        String str4 = str3;
        String str5 = str4;
        String str6 = str5;
        zzaau zzaau = str6;
        String str7 = zzaau;
        String str8 = str7;
        zzaee zzaee = str8;
        List list4 = zzaee;
        List list5 = list4;
        zzaak zzaak = list5;
        String str9 = zzaak;
        List list6 = str9;
        String str10 = list6;
        zzaeq zzaeq = str10;
        String str11 = zzaeq;
        Bundle bundle = str11;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 2:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 3:
                    str2 = zzb.zzq(parcel2, readInt);
                    break;
                case 4:
                    list = zzb.zzC(parcel2, readInt);
                    break;
                case 5:
                    i2 = zzb.zzg(parcel2, readInt);
                    break;
                case 6:
                    list2 = zzb.zzC(parcel2, readInt);
                    break;
                case 7:
                    j = zzb.zzi(parcel2, readInt);
                    break;
                case 8:
                    z = zzb.zzc(parcel2, readInt);
                    break;
                case 9:
                    j2 = zzb.zzi(parcel2, readInt);
                    break;
                case 10:
                    list3 = zzb.zzC(parcel2, readInt);
                    break;
                case 11:
                    j3 = zzb.zzi(parcel2, readInt);
                    break;
                case 12:
                    i3 = zzb.zzg(parcel2, readInt);
                    break;
                case 13:
                    str3 = zzb.zzq(parcel2, readInt);
                    break;
                case 14:
                    j4 = zzb.zzi(parcel2, readInt);
                    break;
                case 15:
                    str4 = zzb.zzq(parcel2, readInt);
                    break;
                case 18:
                    z2 = zzb.zzc(parcel2, readInt);
                    break;
                case 19:
                    str5 = zzb.zzq(parcel2, readInt);
                    break;
                case 21:
                    str6 = zzb.zzq(parcel2, readInt);
                    break;
                case 22:
                    z3 = zzb.zzc(parcel2, readInt);
                    break;
                case 23:
                    z4 = zzb.zzc(parcel2, readInt);
                    break;
                case 24:
                    z5 = zzb.zzc(parcel2, readInt);
                    break;
                case 25:
                    z6 = zzb.zzc(parcel2, readInt);
                    break;
                case 26:
                    z7 = zzb.zzc(parcel2, readInt);
                    break;
                case 28:
                    zzaau = (zzaau) zzb.zza(parcel2, readInt, zzaau.CREATOR);
                    break;
                case 29:
                    str7 = zzb.zzq(parcel2, readInt);
                    break;
                case 30:
                    str8 = zzb.zzq(parcel2, readInt);
                    break;
                case 31:
                    z8 = zzb.zzc(parcel2, readInt);
                    break;
                case 32:
                    z9 = zzb.zzc(parcel2, readInt);
                    break;
                case 33:
                    zzaee = (zzaee) zzb.zza(parcel2, readInt, zzaee.CREATOR);
                    break;
                case 34:
                    list4 = zzb.zzC(parcel2, readInt);
                    break;
                case 35:
                    list5 = zzb.zzC(parcel2, readInt);
                    break;
                case 36:
                    z10 = zzb.zzc(parcel2, readInt);
                    break;
                case 37:
                    zzaak = (zzaak) zzb.zza(parcel2, readInt, zzaak.CREATOR);
                    break;
                case 38:
                    z11 = zzb.zzc(parcel2, readInt);
                    break;
                case 39:
                    str9 = zzb.zzq(parcel2, readInt);
                    break;
                case 40:
                    list6 = zzb.zzC(parcel2, readInt);
                    break;
                case 42:
                    z12 = zzb.zzc(parcel2, readInt);
                    break;
                case 43:
                    str10 = zzb.zzq(parcel2, readInt);
                    break;
                case 44:
                    zzaeq = (zzaeq) zzb.zza(parcel2, readInt, zzaeq.CREATOR);
                    break;
                case 45:
                    str11 = zzb.zzq(parcel2, readInt);
                    break;
                case 46:
                    z13 = zzb.zzc(parcel2, readInt);
                    break;
                case 47:
                    z14 = zzb.zzc(parcel2, readInt);
                    break;
                case 48:
                    bundle = zzb.zzs(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new zzaai(i, str, str2, list, i2, list2, j, z, j2, list3, j3, i3, str3, j4, str4, z2, str5, str6, z3, z4, z5, z6, z7, zzaau, str7, str8, z8, z9, zzaee, list4, list5, z10, zzaak, z11, str9, list6, z12, str10, zzaeq, str11, z13, z14, bundle);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzaai[i];
    }
}
