package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.Session;
import java.util.List;

public final class zzi implements Creator<SessionStopResult> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        Status status = null;
        int i = 0;
        List list = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 != 1000) {
                switch (i2) {
                    case 2:
                        status = (Status) zzb.zza(parcel, readInt, Status.CREATOR);
                        break;
                    case 3:
                        list = zzb.zzc(parcel, readInt, Session.CREATOR);
                        break;
                    default:
                        zzb.zzb(parcel, readInt);
                        break;
                }
            }
            i = zzb.zzg(parcel, readInt);
        }
        zzb.zzF(parcel, zzd);
        return new SessionStopResult(i, status, list);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new SessionStopResult[i];
    }
}
