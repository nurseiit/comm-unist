package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.internal.zzbuf;
import java.util.Arrays;
import java.util.List;

@KeepName
public final class RawDataSet extends zza {
    public static final Creator<RawDataSet> CREATOR = new zzaa();
    public final boolean zzaTs;
    public final int zzaUZ;
    private int zzaVd;
    public final List<RawDataPoint> zzaVe;
    private int zzaku;

    public RawDataSet(int i, int i2, int i3, List<RawDataPoint> list, boolean z) {
        this.zzaku = i;
        this.zzaUZ = i2;
        this.zzaVd = i3;
        this.zzaVe = list;
        this.zzaTs = z;
    }

    public RawDataSet(DataSet dataSet, List<DataSource> list, List<DataType> list2) {
        this.zzaku = 3;
        this.zzaVe = dataSet.zzA(list);
        this.zzaTs = dataSet.zztE();
        this.zzaUZ = zzbuf.zza(dataSet.getDataSource(), list);
        this.zzaVd = zzbuf.zza(dataSet.getDataType(), list2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RawDataSet) {
            RawDataSet rawDataSet = (RawDataSet) obj;
            obj = (this.zzaUZ == rawDataSet.zzaUZ && this.zzaTs == rawDataSet.zzaTs && zzbe.equal(this.zzaVe, rawDataSet.zzaVe)) ? 1 : null;
            if (obj != null) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zzaUZ)});
    }

    public final String toString() {
        return String.format("RawDataSet{%s@[%s]}", new Object[]{Integer.valueOf(this.zzaUZ), this.zzaVe});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.zzaUZ);
        zzd.zzc(parcel, 2, this.zzaVd);
        zzd.zzc(parcel, 3, this.zzaVe, false);
        zzd.zza(parcel, 4, this.zzaTs);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, i);
    }
}
