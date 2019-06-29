package com.google.android.gms.wearable;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzh implements Creator<PutDataRequest> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        Uri uri = null;
        Bundle bundle = uri;
        byte[] bArr = bundle;
        long j = 0;
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
                    case 6:
                        j = zzb.zzi(parcel, readInt);
                        break;
                    default:
                        zzb.zzb(parcel, readInt);
                        break;
                }
            }
            uri = (Uri) zzb.zza(parcel, readInt, Uri.CREATOR);
        }
        zzb.zzF(parcel, zzd);
        return new PutDataRequest(uri, bundle, bArr, j);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new PutDataRequest[i];
    }
}
