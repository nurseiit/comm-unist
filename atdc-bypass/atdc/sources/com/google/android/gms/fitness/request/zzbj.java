package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.Subscription;

public final class zzbj implements Creator<zzbi> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        Subscription subscription = null;
        int i = 0;
        IBinder iBinder = null;
        boolean z = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 != 1000) {
                switch (i2) {
                    case 1:
                        subscription = (Subscription) zzb.zza(parcel, readInt, Subscription.CREATOR);
                        break;
                    case 2:
                        z = zzb.zzc(parcel, readInt);
                        break;
                    case 3:
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
        return new zzbi(i, subscription, z, iBinder);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbi[i];
    }
}
