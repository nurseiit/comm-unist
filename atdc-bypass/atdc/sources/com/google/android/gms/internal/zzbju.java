package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzbju implements Creator<zzbjt> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        long j = 0;
        long j2 = j;
        zzbiw zzbiw = null;
        IBinder iBinder = zzbiw;
        PendingIntent pendingIntent = iBinder;
        String str = pendingIntent;
        int i = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 3:
                    zzbiw = (zzbiw) zzb.zza(parcel2, readInt, zzbiw.CREATOR);
                    break;
                case 4:
                    iBinder = zzb.zzr(parcel2, readInt);
                    break;
                case 5:
                    pendingIntent = (PendingIntent) zzb.zza(parcel2, readInt, PendingIntent.CREATOR);
                    break;
                case 6:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 7:
                    j = zzb.zzi(parcel2, readInt);
                    break;
                case 8:
                    j2 = zzb.zzi(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new zzbjt(i, zzbiw, iBinder, pendingIntent, str, j, j2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbjt[i];
    }
}
