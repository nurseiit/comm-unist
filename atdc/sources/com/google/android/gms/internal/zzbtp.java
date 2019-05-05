package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzbtp extends zza {
    public static final Creator<zzbtp> CREATOR = new zzbtq();
    private String zzaSd;
    private String zzaSe;
    private int zzaSf;
    private int zzaSg;

    public zzbtp(String str, String str2, int i, int i2) {
        this.zzaSd = str;
        this.zzaSe = str2;
        this.zzaSf = i;
        this.zzaSg = i2;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaSd, false);
        zzd.zza(parcel, 3, this.zzaSe, false);
        zzd.zzc(parcel, 4, this.zzaSf);
        zzd.zzc(parcel, 5, this.zzaSg);
        zzd.zzI(parcel, i);
    }
}
