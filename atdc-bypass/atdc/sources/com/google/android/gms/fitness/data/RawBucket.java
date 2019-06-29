package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;

@KeepName
public final class RawBucket extends zza {
    public static final Creator<RawBucket> CREATOR = new zzy();
    public final Session zzaTe;
    public final long zzaTo;
    public final List<RawDataSet> zzaTq;
    public final int zzaTr;
    public final boolean zzaTs;
    public final int zzaUV;
    public final long zzagZ;
    private int zzaku;

    public RawBucket(int i, long j, long j2, Session session, int i2, List<RawDataSet> list, int i3, boolean z) {
        this.zzaku = i;
        this.zzagZ = j;
        this.zzaTo = j2;
        this.zzaTe = session;
        this.zzaUV = i2;
        this.zzaTq = list;
        this.zzaTr = i3;
        this.zzaTs = z;
    }

    public RawBucket(Bucket bucket, List<DataSource> list, List<DataType> list2) {
        this.zzaku = 2;
        this.zzagZ = bucket.getStartTime(TimeUnit.MILLISECONDS);
        this.zzaTo = bucket.getEndTime(TimeUnit.MILLISECONDS);
        this.zzaTe = bucket.getSession();
        this.zzaUV = bucket.zztD();
        this.zzaTr = bucket.getBucketType();
        this.zzaTs = bucket.zztE();
        List<DataSet> dataSets = bucket.getDataSets();
        this.zzaTq = new ArrayList(dataSets.size());
        for (DataSet rawDataSet : dataSets) {
            this.zzaTq.add(new RawDataSet(rawDataSet, list, list2));
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RawBucket) {
            RawBucket rawBucket = (RawBucket) obj;
            obj = (this.zzagZ == rawBucket.zzagZ && this.zzaTo == rawBucket.zzaTo && this.zzaUV == rawBucket.zzaUV && zzbe.equal(this.zzaTq, rawBucket.zzaTq) && this.zzaTr == rawBucket.zzaTr && this.zzaTs == rawBucket.zzaTs) ? 1 : null;
            if (obj != null) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.zzagZ), Long.valueOf(this.zzaTo), Integer.valueOf(this.zzaTr)});
    }

    public final String toString() {
        return zzbe.zzt(this).zzg("startTime", Long.valueOf(this.zzagZ)).zzg("endTime", Long.valueOf(this.zzaTo)).zzg("activity", Integer.valueOf(this.zzaUV)).zzg("dataSets", this.zzaTq).zzg("bucketType", Integer.valueOf(this.zzaTr)).zzg("serverHasMoreData", Boolean.valueOf(this.zzaTs)).toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzagZ);
        zzd.zza(parcel, 2, this.zzaTo);
        zzd.zza(parcel, 3, this.zzaTe, i, false);
        zzd.zzc(parcel, 4, this.zzaUV);
        zzd.zzc(parcel, 5, this.zzaTq, false);
        zzd.zzc(parcel, 6, this.zzaTr);
        zzd.zza(parcel, 7, this.zzaTs);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, zze);
    }
}
