package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.drive.zzg;
import java.util.Collections;
import java.util.List;

public final class zzbpd extends zza {
    public static final Creator<zzbpd> CREATOR = new zzbpe();
    private static final List<zzg> zzaOX = Collections.emptyList();
    private int zzLe;
    final long zzaOY;
    final long zzaOZ;
    private List<zzg> zzaPa;

    public zzbpd(long j, long j2, int i, List<zzg> list) {
        this.zzaOY = j;
        this.zzaOZ = j2;
        this.zzLe = i;
        this.zzaPa = list;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaOY);
        zzd.zza(parcel, 3, this.zzaOZ);
        zzd.zzc(parcel, 4, this.zzLe);
        zzd.zzc(parcel, 5, this.zzaPa, false);
        zzd.zzI(parcel, i);
    }
}
