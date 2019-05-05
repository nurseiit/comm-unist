package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.internal.zzbuf;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;

@KeepName
public final class RawDataPoint extends zza {
    public static final Creator<RawDataPoint> CREATOR = new zzz();
    private int versionCode;
    public final long zzaUW;
    public final long zzaUX;
    public final Value[] zzaUY;
    public final int zzaUZ;
    public final int zzaVa;
    public final long zzaVb;
    public final long zzaVc;

    public RawDataPoint(int i, long j, long j2, Value[] valueArr, int i2, int i3, long j3, long j4) {
        this.versionCode = i;
        this.zzaUW = j;
        this.zzaUX = j2;
        this.zzaUZ = i2;
        this.zzaVa = i3;
        this.zzaVb = j3;
        this.zzaVc = j4;
        this.zzaUY = valueArr;
    }

    RawDataPoint(DataPoint dataPoint, List<DataSource> list) {
        this.versionCode = 4;
        this.zzaUW = dataPoint.getTimestamp(TimeUnit.NANOSECONDS);
        this.zzaUX = dataPoint.getStartTime(TimeUnit.NANOSECONDS);
        this.zzaUY = dataPoint.zztG();
        this.zzaUZ = zzbuf.zza(dataPoint.getDataSource(), list);
        this.zzaVa = zzbuf.zza(dataPoint.zztH(), list);
        this.zzaVb = dataPoint.zztI();
        this.zzaVc = dataPoint.zztJ();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RawDataPoint) {
            RawDataPoint rawDataPoint = (RawDataPoint) obj;
            obj = (this.zzaUW == rawDataPoint.zzaUW && this.zzaUX == rawDataPoint.zzaUX && Arrays.equals(this.zzaUY, rawDataPoint.zzaUY) && this.zzaUZ == rawDataPoint.zzaUZ && this.zzaVa == rawDataPoint.zzaVa && this.zzaVb == rawDataPoint.zzaVb) ? 1 : null;
            if (obj != null) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.zzaUW), Long.valueOf(this.zzaUX)});
    }

    public final String toString() {
        return String.format("RawDataPoint{%s@[%s, %s](%d,%d)}", new Object[]{Arrays.toString(this.zzaUY), Long.valueOf(this.zzaUX), Long.valueOf(this.zzaUW), Integer.valueOf(this.zzaUZ), Integer.valueOf(this.zzaVa)});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzaUW);
        zzd.zza(parcel, 2, this.zzaUX);
        zzd.zza(parcel, 3, this.zzaUY, i, false);
        zzd.zzc(parcel, 4, this.zzaUZ);
        zzd.zzc(parcel, 5, this.zzaVa);
        zzd.zza(parcel, 6, this.zzaVb);
        zzd.zza(parcel, 7, this.zzaVc);
        zzd.zzc(parcel, 1000, this.versionCode);
        zzd.zzI(parcel, zze);
    }
}
