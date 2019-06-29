package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.awareness.fence.FenceState;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzbjd extends FenceState {
    public static final Creator<zzbjd> CREATOR = new zzbje();
    private int zzaLd;
    private long zzaLe;
    private String zzaLf;
    private int zzaLg;

    public zzbjd(int i, long j, String str, int i2) {
        this.zzaLd = i;
        this.zzaLe = j;
        this.zzaLf = str;
        this.zzaLg = i2;
    }

    public final int getCurrentState() {
        return this.zzaLd;
    }

    public final String getFenceKey() {
        return this.zzaLf;
    }

    public final long getLastFenceUpdateTimeMillis() {
        return this.zzaLe;
    }

    public final int getPreviousState() {
        return this.zzaLg;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 2, this.zzaLd);
        zzd.zza(parcel, 3, this.zzaLe);
        zzd.zza(parcel, 4, this.zzaLf, false);
        zzd.zzc(parcel, 5, this.zzaLg);
        zzd.zzI(parcel, i);
    }
}
