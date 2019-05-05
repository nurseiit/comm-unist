package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.nearby.connection.AdvertisingOptions;

public final class zzcoy implements Creator<zzcox> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        IBinder iBinder = null;
        IBinder iBinder2 = iBinder;
        String str = iBinder2;
        String str2 = str;
        AdvertisingOptions advertisingOptions = str2;
        IBinder iBinder3 = advertisingOptions;
        long j = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    iBinder = zzb.zzr(parcel, readInt);
                    break;
                case 2:
                    iBinder2 = zzb.zzr(parcel, readInt);
                    break;
                case 3:
                    str = zzb.zzq(parcel, readInt);
                    break;
                case 4:
                    str2 = zzb.zzq(parcel, readInt);
                    break;
                case 5:
                    j = zzb.zzi(parcel, readInt);
                    break;
                case 6:
                    advertisingOptions = (AdvertisingOptions) zzb.zza(parcel, readInt, AdvertisingOptions.CREATOR);
                    break;
                case 7:
                    iBinder3 = zzb.zzr(parcel, readInt);
                    break;
                default:
                    zzb.zzb(parcel, readInt);
                    break;
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzcox(iBinder, iBinder2, str, str2, j, advertisingOptions, iBinder3);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzcox[i];
    }
}
