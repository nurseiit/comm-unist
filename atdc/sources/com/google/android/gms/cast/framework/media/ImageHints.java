package com.google.android.gms.cast.framework.media;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public class ImageHints extends zza {
    public static final Creator<ImageHints> CREATOR = new zzf();
    private final int zzamr;
    private final int zzatI;
    private final int zzatJ;

    public ImageHints(int i, int i2, int i3) {
        this.zzamr = i;
        this.zzatI = i2;
        this.zzatJ = i3;
    }

    public int getHeightInPixels() {
        return this.zzatJ;
    }

    public int getType() {
        return this.zzamr;
    }

    public int getWidthInPixels() {
        return this.zzatI;
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 2, getType());
        zzd.zzc(parcel, 3, getWidthInPixels());
        zzd.zzc(parcel, 4, getHeightInPixels());
        zzd.zzI(parcel, i);
    }
}
