package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzcc implements Creator<zzcb> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        Uri uri = null;
        Bundle bundle = null;
        byte[] bArr = bundle;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i != 2) {
                switch (i) {
                    case 4:
                        bundle = zzb.zzs(parcel, readInt);
                        break;
                    case 5:
                        bArr = zzb.zzt(parcel, readInt);
                        break;
                    default:
                        zzb.zzb(parcel, readInt);
                        break;
                }
            }
            uri = (Uri) zzb.zza(parcel, readInt, Uri.CREATOR);
        }
        zzb.zzF(parcel, zzd);
        return new zzcb(uri, bundle, bArr);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzcb[i];
    }
}
