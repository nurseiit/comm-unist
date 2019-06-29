package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.util.List;

public final class zzbjb extends zza {
    public static final Creator<zzbjb> CREATOR = new zzbjp();
    private int type;
    private List<String> zzaLc;

    zzbjb(int i, List<String> list) {
        this.type = i;
        this.zzaLc = list;
    }

    public static zzbjb zza(int i, List<String> list) {
        return new zzbjb(i, list);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 2, this.type);
        zzd.zzb(parcel, 3, this.zzaLc, false);
        zzd.zzI(parcel, i);
    }
}
