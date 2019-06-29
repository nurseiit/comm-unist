package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.Session;

public final class zzaz implements Creator<zzay> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        Session session = null;
        int i = 0;
        IBinder iBinder = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 != 1000) {
                switch (i2) {
                    case 1:
                        session = (Session) zzb.zza(parcel, readInt, Session.CREATOR);
                        break;
                    case 2:
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
        return new zzay(i, session, iBinder);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzay[i];
    }
}
