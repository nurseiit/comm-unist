package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzaf implements Creator<zzae> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        Session session = null;
        int i = 0;
        DataSet dataSet = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 != 1000) {
                switch (i2) {
                    case 1:
                        session = (Session) zzb.zza(parcel, readInt, Session.CREATOR);
                        break;
                    case 2:
                        dataSet = (DataSet) zzb.zza(parcel, readInt, DataSet.CREATOR);
                        break;
                    default:
                        zzb.zzb(parcel, readInt);
                        break;
                }
            }
            i = zzb.zzg(parcel, readInt);
        }
        zzb.zzF(parcel, zzd);
        return new zzae(i, session, dataSet);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzae[i];
    }
}
