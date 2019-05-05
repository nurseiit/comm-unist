package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzax implements Creator<zzaw> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        PendingIntent pendingIntent = null;
        int i = 0;
        IBinder iBinder = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 4) {
                i2 = zzb.zzg(parcel, readInt);
            } else if (i3 != 1000) {
                switch (i3) {
                    case 1:
                        pendingIntent = (PendingIntent) zzb.zza(parcel, readInt, PendingIntent.CREATOR);
                        break;
                    case 2:
                        iBinder = zzb.zzr(parcel, readInt);
                        break;
                    default:
                        zzb.zzb(parcel, readInt);
                        break;
                }
            } else {
                i = zzb.zzg(parcel, readInt);
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzaw(i, pendingIntent, iBinder, i2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzaw[i];
    }
}
