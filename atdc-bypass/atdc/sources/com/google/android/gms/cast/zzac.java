package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.List;

public final class zzac implements Creator<MediaInfo> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        String str = null;
        String str2 = str;
        MediaMetadata mediaMetadata = str2;
        List list = mediaMetadata;
        TextTrackStyle textTrackStyle = list;
        String str3 = textTrackStyle;
        List list2 = str3;
        List list3 = list2;
        long j = 0;
        int i = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 3:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 4:
                    str2 = zzb.zzq(parcel2, readInt);
                    break;
                case 5:
                    mediaMetadata = (MediaMetadata) zzb.zza(parcel2, readInt, MediaMetadata.CREATOR);
                    break;
                case 6:
                    j = zzb.zzi(parcel2, readInt);
                    break;
                case 7:
                    list = zzb.zzc(parcel2, readInt, MediaTrack.CREATOR);
                    break;
                case 8:
                    textTrackStyle = (TextTrackStyle) zzb.zza(parcel2, readInt, TextTrackStyle.CREATOR);
                    break;
                case 9:
                    str3 = zzb.zzq(parcel2, readInt);
                    break;
                case 10:
                    list2 = zzb.zzc(parcel2, readInt, AdBreakInfo.CREATOR);
                    break;
                case 11:
                    list3 = zzb.zzc(parcel2, readInt, AdBreakClipInfo.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new MediaInfo(str, i, str2, mediaMetadata, j, list, textTrackStyle, str3, list2, list3);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new MediaInfo[i];
    }
}
