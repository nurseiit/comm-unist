package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class ld extends zza {
    public static final Creator<ld> CREATOR = new le();
    private String zzalO;
    private String zzbXu;
    private String zzbXv;

    ld(String str, String str2, String str3) {
        this.zzalO = str;
        this.zzbXu = str2;
        this.zzbXv = str3;
    }

    public final String getEmail() {
        return this.zzalO;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzalO, false);
        zzd.zza(parcel, 3, this.zzbXu, false);
        zzd.zza(parcel, 4, this.zzbXv, false);
        zzd.zzI(parcel, i);
    }

    public final String zzEU() {
        return this.zzbXu;
    }

    public final String zzEV() {
        return this.zzbXv;
    }
}
