package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.List;

public final class zzag implements Creator<MediaStatus> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        double d = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        double d2 = d;
        long j = 0;
        long j2 = j;
        long j3 = j2;
        MediaInfo mediaInfo = null;
        long[] jArr = mediaInfo;
        String str = jArr;
        List list = str;
        AdBreakStatus adBreakStatus = list;
        VideoInfo videoInfo = adBreakStatus;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        boolean z2 = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    mediaInfo = (MediaInfo) zzb.zza(parcel2, readInt, MediaInfo.CREATOR);
                    break;
                case 3:
                    j = zzb.zzi(parcel2, readInt);
                    break;
                case 4:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 5:
                    d = zzb.zzn(parcel2, readInt);
                    break;
                case 6:
                    i2 = zzb.zzg(parcel2, readInt);
                    break;
                case 7:
                    i3 = zzb.zzg(parcel2, readInt);
                    break;
                case 8:
                    j2 = zzb.zzi(parcel2, readInt);
                    break;
                case 9:
                    j3 = zzb.zzi(parcel2, readInt);
                    break;
                case 10:
                    d2 = zzb.zzn(parcel2, readInt);
                    break;
                case 11:
                    z = zzb.zzc(parcel2, readInt);
                    break;
                case 12:
                    jArr = zzb.zzx(parcel2, readInt);
                    break;
                case 13:
                    i4 = zzb.zzg(parcel2, readInt);
                    break;
                case 14:
                    i5 = zzb.zzg(parcel2, readInt);
                    break;
                case 15:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 16:
                    i6 = zzb.zzg(parcel2, readInt);
                    break;
                case 17:
                    list = zzb.zzc(parcel2, readInt, MediaQueueItem.CREATOR);
                    break;
                case 18:
                    z2 = zzb.zzc(parcel2, readInt);
                    break;
                case 19:
                    adBreakStatus = (AdBreakStatus) zzb.zza(parcel2, readInt, AdBreakStatus.CREATOR);
                    break;
                case 20:
                    videoInfo = (VideoInfo) zzb.zza(parcel2, readInt, VideoInfo.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new MediaStatus(mediaInfo, j, i, d, i2, i3, j2, j3, d2, z, jArr, i4, i5, str, i6, list, z2, adBreakStatus, videoInfo);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new MediaStatus[i];
    }
}
