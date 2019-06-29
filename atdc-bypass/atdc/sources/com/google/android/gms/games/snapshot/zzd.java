package com.google.android.gms.games.snapshot;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzd implements Creator<zze> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        String str = null;
        Long l = str;
        BitmapTeleporter bitmapTeleporter = l;
        Uri uri = bitmapTeleporter;
        Long l2 = uri;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    str = zzb.zzq(parcel, readInt);
                    break;
                case 2:
                    l = zzb.zzj(parcel, readInt);
                    break;
                case 4:
                    uri = (Uri) zzb.zza(parcel, readInt, Uri.CREATOR);
                    break;
                case 5:
                    bitmapTeleporter = (BitmapTeleporter) zzb.zza(parcel, readInt, BitmapTeleporter.CREATOR);
                    break;
                case 6:
                    l2 = zzb.zzj(parcel, readInt);
                    break;
                default:
                    zzb.zzb(parcel, readInt);
                    break;
            }
        }
        zzb.zzF(parcel, zzd);
        return new zze(str, l, bitmapTeleporter, uri, l2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zze[i];
    }
}
