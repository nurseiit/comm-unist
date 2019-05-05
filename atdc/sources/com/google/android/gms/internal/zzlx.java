package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

@zzzn
public final class zzlx extends zza {
    public static final Creator<zzlx> CREATOR = new zzly();
    public final boolean zzBJ;
    public final boolean zzBK;

    public zzlx(VideoOptions videoOptions) {
        this(videoOptions.getStartMuted(), videoOptions.getCustomControlsRequested());
    }

    public zzlx(boolean z, boolean z2) {
        this.zzBJ = z;
        this.zzBK = z2;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzBJ);
        zzd.zza(parcel, 3, this.zzBK);
        zzd.zzI(parcel, i);
    }
}
