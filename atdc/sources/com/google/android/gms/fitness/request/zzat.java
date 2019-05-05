package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataPoint;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.Session;
import java.util.List;

public final class zzat implements Creator<SessionInsertRequest> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        Session session = null;
        List list = session;
        List list2 = list;
        IBinder iBinder = list2;
        int i = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 != 1000) {
                switch (i2) {
                    case 1:
                        session = (Session) zzb.zza(parcel, readInt, Session.CREATOR);
                        break;
                    case 2:
                        list = zzb.zzc(parcel, readInt, DataSet.CREATOR);
                        break;
                    case 3:
                        list2 = zzb.zzc(parcel, readInt, DataPoint.CREATOR);
                        break;
                    case 4:
                        iBinder = zzb.zzr(parcel, readInt);
                        break;
                    default:
                        zzb.zzb(parcel, readInt);
                        break;
                }
            }
            i = zzb.zzg(parcel, readInt);
        }
        zzb.zzF(parcel, zzd);
        return new SessionInsertRequest(i, session, list, list2, iBinder);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new SessionInsertRequest[i];
    }
}
