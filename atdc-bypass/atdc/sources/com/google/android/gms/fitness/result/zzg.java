package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.Subscription;
import java.util.List;

public final class zzg implements Creator<ListSubscriptionsResult> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        List list = null;
        int i = 0;
        Status status = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 != 1000) {
                switch (i2) {
                    case 1:
                        list = zzb.zzc(parcel, readInt, Subscription.CREATOR);
                        break;
                    case 2:
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
        return new ListSubscriptionsResult(i, list, status);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new ListSubscriptionsResult[i];
    }
}
