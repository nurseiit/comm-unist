package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzatg extends zza {
    public static final Creator<zzatg> CREATOR = new zzath();
    private final int zzaoa;

    public zzatg(int i) {
        this.zzaoa = i;
    }

    public final String toString() {
        return this.zzaoa == 1 ? "ScreenState: SCREEN_OFF" : this.zzaoa == 2 ? "ScreenState: SCREEN_ON" : "ScreenState: UNKNOWN";
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 2, this.zzaoa);
        zzd.zzI(parcel, i);
    }
}
