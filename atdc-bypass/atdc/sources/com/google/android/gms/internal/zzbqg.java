package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzbqg extends zza {
    public static final Creator<zzbqg> CREATOR = new zzbqh();
    private int zzaOL;
    private int zzaOM;
    private boolean zzaPr;

    zzbqg(int i, int i2, boolean z) {
        this.zzaOL = i;
        this.zzaOM = i2;
        this.zzaPr = z;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 2, this.zzaOL);
        zzd.zzc(parcel, 3, this.zzaOM);
        zzd.zza(parcel, 4, this.zzaPr);
        zzd.zzI(parcel, i);
    }
}
