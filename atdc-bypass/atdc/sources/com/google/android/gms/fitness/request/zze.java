package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.BleDevice;

public final class zze implements Creator<zzd> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        String str = null;
        int i = 0;
        BleDevice bleDevice = null;
        IBinder iBinder = bleDevice;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 != 1000) {
                switch (i2) {
                    case 1:
                        str = zzb.zzq(parcel, readInt);
                        break;
                    case 2:
                        bleDevice = (BleDevice) zzb.zza(parcel, readInt, BleDevice.CREATOR);
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
        return new zzd(i, str, bleDevice, iBinder);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzd[i];
    }
}
