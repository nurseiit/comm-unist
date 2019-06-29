package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.fitness.data.zzae;
import java.util.List;

public final class zzh implements Creator<SessionReadResult> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        List list = null;
        int i = 0;
        List list2 = null;
        Status status = list2;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 != 1000) {
                switch (i2) {
                    case 1:
                        list = zzb.zzc(parcel, readInt, Session.CREATOR);
                        break;
                    case 2:
                        list2 = zzb.zzc(parcel, readInt, zzae.CREATOR);
                        break;
                    case 3:
                        status = (Status) zzb.zza(parcel, readInt, Status.CREATOR);
                        break;
                    default:
                        zzb.zzb(parcel, readInt);
                        break;
                }
            }
            i = zzb.zzg(parcel, readInt);
        }
        zzb.zzF(parcel, zzd);
        return new SessionReadResult(i, list, list2, status);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new SessionReadResult[i];
    }
}
