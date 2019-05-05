package com.google.firebase.appindexing.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.firebase.appindexing.internal.Thing.zza;

public final class zzz implements Creator<Thing> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        Bundle bundle = null;
        zza zza = bundle;
        String str = zza;
        String str2 = str;
        int i = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 != 1000) {
                switch (i2) {
                    case 1:
                        bundle = zzb.zzs(parcel, readInt);
                        break;
                    case 2:
                        zza = (zza) zzb.zza(parcel, readInt, zza.CREATOR);
                        break;
                    case 3:
                        str = zzb.zzq(parcel, readInt);
                        break;
                    case 4:
                        str2 = zzb.zzq(parcel, readInt);
                        break;
                    default:
                        zzb.zzb(parcel, readInt);
                        break;
                }
            }
            i = zzb.zzg(parcel, readInt);
        }
        zzb.zzF(parcel, zzd);
        return new Thing(i, bundle, zza, str, str2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new Thing[i];
    }
}
