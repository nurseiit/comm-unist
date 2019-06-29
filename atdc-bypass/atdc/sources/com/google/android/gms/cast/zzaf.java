package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;

public final class zzaf implements Creator<MediaQueueItem> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        double d = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        double d2 = d;
        double d3 = d2;
        MediaInfo mediaInfo = null;
        long[] jArr = mediaInfo;
        String str = jArr;
        int i = 0;
        boolean z = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    mediaInfo = (MediaInfo) zzb.zza(parcel2, readInt, MediaInfo.CREATOR);
                    break;
                case 3:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 4:
                    z = zzb.zzc(parcel2, readInt);
                    break;
                case 5:
                    d = zzb.zzn(parcel2, readInt);
                    break;
                case 6:
                    d2 = zzb.zzn(parcel2, readInt);
                    break;
                case 7:
                    d3 = zzb.zzn(parcel2, readInt);
                    break;
                case 8:
                    jArr = zzb.zzx(parcel2, readInt);
                    break;
                case 9:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new MediaQueueItem(mediaInfo, i, z, d, d2, d3, jArr, str);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new MediaQueueItem[i];
    }
}
