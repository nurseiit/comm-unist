package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzbia extends zza {
    public static final Creator<zzbia> CREATOR = new zzbib();
    private final DataHolder zzaKH;
    private final DataHolder zzaKI;
    private final long zzaKy;
    private final int zzaxu;

    public zzbia(int i, DataHolder dataHolder, long j, DataHolder dataHolder2) {
        this.zzaxu = i;
        this.zzaKH = dataHolder;
        this.zzaKy = j;
        this.zzaKI = dataHolder2;
    }

    public final int getStatusCode() {
        return this.zzaxu;
    }

    public final long getThrottleEndTimeMillis() {
        return this.zzaKy;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zzc(parcel, 2, this.zzaxu);
        zzd.zza(parcel, 3, this.zzaKH, i, false);
        zzd.zza(parcel, 4, this.zzaKy);
        zzd.zza(parcel, 5, this.zzaKI, i, false);
        zzd.zzI(parcel, zze);
    }

    public final DataHolder zzsu() {
        return this.zzaKH;
    }

    public final DataHolder zzsv() {
        return this.zzaKI;
    }

    public final void zzsw() {
        if (this.zzaKH != null && !this.zzaKH.isClosed()) {
            this.zzaKH.close();
        }
    }

    public final void zzsx() {
        if (this.zzaKI != null && !this.zzaKI.isClosed()) {
            this.zzaKI.close();
        }
    }
}
