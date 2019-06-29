package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.nearby.connection.DiscoveryOptions;

public final class zzcpa implements Creator<zzcoz> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        IBinder iBinder = null;
        IBinder iBinder2 = iBinder;
        String str = iBinder2;
        DiscoveryOptions discoveryOptions = str;
        IBinder iBinder3 = discoveryOptions;
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
                    j = zzb.zzi(parcel, readInt);
                    break;
                case 5:
                    discoveryOptions = (DiscoveryOptions) zzb.zza(parcel, readInt, DiscoveryOptions.CREATOR);
                    break;
                case 6:
                    iBinder3 = zzb.zzr(parcel, readInt);
                    break;
                default:
                    zzb.zzb(parcel, readInt);
                    break;
            }
        }
        zzb.zzF(parcel, zzd);
        return new zzcoz(iBinder, iBinder2, str, j, discoveryOptions, iBinder3);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzcoz[i];
    }
}
