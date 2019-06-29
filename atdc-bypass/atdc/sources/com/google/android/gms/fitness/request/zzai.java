package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.internal.zzbwx;
import com.google.android.gms.internal.zzbwy;

public final class zzai extends zza {
    public static final Creator<zzai> CREATOR = new zzaj();
    private final DataType zzaUe;
    private final zzbwx zzaWR;
    private final int zzaku;

    zzai(int i, DataType dataType, IBinder iBinder) {
        this.zzaku = i;
        this.zzaUe = dataType;
        this.zzaWR = zzbwy.zzT(iBinder);
    }

    public zzai(DataType dataType, zzbwx zzbwx) {
        this.zzaku = 3;
        this.zzaUe = dataType;
        this.zzaWR = zzbwx;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzaUe, i, false);
        zzd.zza(parcel, 2, this.zzaWR == null ? null : this.zzaWR.asBinder(), false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, zze);
    }
}
