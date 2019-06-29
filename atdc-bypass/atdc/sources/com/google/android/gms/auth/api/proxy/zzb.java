package com.google.android.gms.auth.api.proxy;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class zzb implements Creator<ProxyResponse> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = com.google.android.gms.common.internal.safeparcel.zzb.zzd(parcel);
        PendingIntent pendingIntent = null;
        Bundle bundle = pendingIntent;
        byte[] bArr = bundle;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i4 = 65535 & readInt;
            if (i4 != 1000) {
                switch (i4) {
                    case 1:
                        i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, readInt);
                        break;
                    case 2:
                        pendingIntent = (PendingIntent) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, readInt, PendingIntent.CREATOR);
                        break;
                    case 3:
                        i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, readInt);
                        break;
                    case 4:
                        bundle = com.google.android.gms.common.internal.safeparcel.zzb.zzs(parcel, readInt);
                        break;
                    case 5:
                        bArr = com.google.android.gms.common.internal.safeparcel.zzb.zzt(parcel, readInt);
                        break;
                    default:
                        com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, readInt);
                        break;
                }
            }
            i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, readInt);
        }
        com.google.android.gms.common.internal.safeparcel.zzb.zzF(parcel, zzd);
        return new ProxyResponse(i, i2, pendingIntent, i3, bundle, bArr);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new ProxyResponse[i];
    }
}
