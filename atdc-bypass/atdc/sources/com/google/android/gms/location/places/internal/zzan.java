package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.util.Collections;
import java.util.List;

public final class zzan extends zza {
    public static final Creator<zzan> CREATOR = new zzf();
    private int zzbkR;
    private int zzbkS;
    private int zzbkT;
    private int zzbkU;
    private int zzbkV;
    private int zzbkW;
    private List<zzam> zzbkX;

    zzan(int i, int i2, int i3, int i4, int i5, int i6, List<zzam> list) {
        this.zzbkR = i;
        this.zzbkS = i2;
        this.zzbkT = i3;
        this.zzbkU = i4;
        this.zzbkV = i5;
        this.zzbkW = i6;
        this.zzbkX = Collections.unmodifiableList(list);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.zzbkR);
        zzd.zzc(parcel, 2, this.zzbkS);
        zzd.zzc(parcel, 3, this.zzbkT);
        zzd.zzc(parcel, 4, this.zzbkU);
        zzd.zzc(parcel, 5, this.zzbkV);
        zzd.zzc(parcel, 6, this.zzbkW);
        zzd.zzc(parcel, 7, this.zzbkX, false);
        zzd.zzI(parcel, i);
    }
}
