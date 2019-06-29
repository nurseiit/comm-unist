package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class fl implements Creator<fk> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        ft[] ftVarArr = null;
        fe feVar = ftVarArr;
        fe feVar2 = feVar;
        fe feVar3 = feVar2;
        String str = feVar3;
        String str2 = str;
        float f = 0.0f;
        int i = 0;
        boolean z = false;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    ftVarArr = (ft[]) zzb.zzb(parcel2, readInt, ft.CREATOR);
                    break;
                case 3:
                    feVar = (fe) zzb.zza(parcel2, readInt, fe.CREATOR);
                    break;
                case 4:
                    feVar2 = (fe) zzb.zza(parcel2, readInt, fe.CREATOR);
                    break;
                case 5:
                    feVar3 = (fe) zzb.zza(parcel2, readInt, fe.CREATOR);
                    break;
                case 6:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 7:
                    f = zzb.zzl(parcel2, readInt);
                    break;
                case 8:
                    str2 = zzb.zzq(parcel2, readInt);
                    break;
                case 9:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 10:
                    z = zzb.zzc(parcel2, readInt);
                    break;
                case 11:
                    i2 = zzb.zzg(parcel2, readInt);
                    break;
                case 12:
                    i3 = zzb.zzg(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new fk(ftVarArr, feVar, feVar2, feVar3, str, f, str2, i, z, i2, i3);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new fk[i];
    }
}
