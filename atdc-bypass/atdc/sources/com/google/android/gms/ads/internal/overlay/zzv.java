package com.google.android.gms.ads.internal.overlay;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.ads.internal.zzap;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzaje;

public final class zzv implements Creator<AdOverlayInfoParcel> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        zzc zzc = null;
        IBinder iBinder = zzc;
        IBinder iBinder2 = iBinder;
        IBinder iBinder3 = iBinder2;
        IBinder iBinder4 = iBinder3;
        String str = iBinder4;
        String str2 = str;
        IBinder iBinder5 = str2;
        String str3 = iBinder5;
        zzaje zzaje = str3;
        String str4 = zzaje;
        zzap zzap = str4;
        boolean z = false;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    zzc = (zzc) zzb.zza(parcel2, readInt, zzc.CREATOR);
                    break;
                case 3:
                    iBinder = zzb.zzr(parcel2, readInt);
                    break;
                case 4:
                    iBinder2 = zzb.zzr(parcel2, readInt);
                    break;
                case 5:
                    iBinder3 = zzb.zzr(parcel2, readInt);
                    break;
                case 6:
                    iBinder4 = zzb.zzr(parcel2, readInt);
                    break;
                case 7:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 8:
                    z = zzb.zzc(parcel2, readInt);
                    break;
                case 9:
                    str2 = zzb.zzq(parcel2, readInt);
                    break;
                case 10:
                    iBinder5 = zzb.zzr(parcel2, readInt);
                    break;
                case 11:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 12:
                    i2 = zzb.zzg(parcel2, readInt);
                    break;
                case 13:
                    str3 = zzb.zzq(parcel2, readInt);
                    break;
                case 14:
                    zzaje = (zzaje) zzb.zza(parcel2, readInt, zzaje.CREATOR);
                    break;
                case 16:
                    str4 = zzb.zzq(parcel2, readInt);
                    break;
                case 17:
                    zzap = (zzap) zzb.zza(parcel2, readInt, zzap.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new AdOverlayInfoParcel(zzc, iBinder, iBinder2, iBinder3, iBinder4, str, z, str2, iBinder5, i, i2, str3, zzaje, str4, zzap);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new AdOverlayInfoParcel[i];
    }
}
