package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.List;

public final class zze implements Creator<Bucket> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        Session session = null;
        List list = session;
        long j = 0;
        long j2 = j;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i4 = 65535 & readInt;
            if (i4 != 1000) {
                switch (i4) {
                    case 1:
                        j = zzb.zzi(parcel2, readInt);
                        break;
                    case 2:
                        j2 = zzb.zzi(parcel2, readInt);
                        break;
                    case 3:
                        session = (Session) zzb.zza(parcel2, readInt, Session.CREATOR);
                        break;
                    case 4:
                        i2 = zzb.zzg(parcel2, readInt);
                        break;
                    case 5:
                        list = zzb.zzc(parcel2, readInt, DataSet.CREATOR);
                        break;
                    case 6:
                        i3 = zzb.zzg(parcel2, readInt);
                        break;
                    case 7:
                        z = zzb.zzc(parcel2, readInt);
                        break;
                    default:
                        zzb.zzb(parcel2, readInt);
                        break;
                }
            }
            i = zzb.zzg(parcel2, readInt);
        }
        zzb.zzF(parcel2, zzd);
        return new Bucket(i, j, j2, session, i2, list, i3, z);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new Bucket[i];
    }
}
