package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zze implements Creator<zzd> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        IBinder iBinder = null;
        IntentFilter[] intentFilterArr = null;
        String str = intentFilterArr;
        String str2 = str;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    iBinder = zzb.zzr(parcel, readInt);
                    break;
                case 3:
                    intentFilterArr = (IntentFilter[]) zzb.zzb(parcel, readInt, IntentFilter.CREATOR);
                    break;
                case 4:
                    str = zzb.zzq(parcel, readInt);
                    break;
                case 5:
                    str2 = zzb.zzq(parcel, readInt);
                    break;
                default:
                    zzb.zzb(parcel, readInt);
                    break;
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzd(iBinder, intentFilterArr, str, str2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzd[i];
    }
}
