package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.fitness.data.DataType;
import java.util.Collections;
import java.util.List;

public final class zzbzo extends zza {
    public static final Creator<zzbzo> CREATOR = new zzbzp();
    private final List<DataType> zzaTn;
    private final int zzaku;

    zzbzo(int i, List<DataType> list) {
        this.zzaku = i;
        this.zzaTn = list;
    }

    public final List<DataType> getDataTypes() {
        return Collections.unmodifiableList(this.zzaTn);
    }

    public final String toString() {
        return zzbe.zzt(this).zzg("dataTypes", this.zzaTn).toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, Collections.unmodifiableList(this.zzaTn), false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, i);
    }
}
