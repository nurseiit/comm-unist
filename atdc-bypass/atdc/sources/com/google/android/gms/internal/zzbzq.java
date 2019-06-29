package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.fitness.data.DataSource;

public final class zzbzq extends zza {
    public static final Creator<zzbzq> CREATOR = new zzbzr();
    private final DataSource zzaUd;
    private final int zzaku;

    zzbzq(int i, DataSource dataSource) {
        this.zzaku = i;
        this.zzaUd = dataSource;
    }

    public final DataSource getDataSource() {
        return this.zzaUd;
    }

    public final String toString() {
        return String.format("ApplicationUnregistrationRequest{%s}", new Object[]{this.zzaUd});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzaUd, i, false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, zze);
    }
}
