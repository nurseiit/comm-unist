package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class Bucket extends zza implements ReflectedParcelable {
    public static final Creator<Bucket> CREATOR = new zze();
    public static final int TYPE_ACTIVITY_SEGMENT = 4;
    public static final int TYPE_ACTIVITY_TYPE = 3;
    public static final int TYPE_SESSION = 2;
    public static final int TYPE_TIME = 1;
    private final Session zzaTe;
    private final long zzaTo;
    private final int zzaTp;
    private final List<DataSet> zzaTq;
    private final int zzaTr;
    private boolean zzaTs;
    private final long zzagZ;
    private final int zzaku;

    Bucket(int i, long j, long j2, Session session, int i2, List<DataSet> list, int i3, boolean z) {
        this.zzaTs = false;
        this.zzaku = i;
        this.zzagZ = j;
        this.zzaTo = j2;
        this.zzaTe = session;
        this.zzaTp = i2;
        this.zzaTq = list;
        this.zzaTr = i3;
        this.zzaTs = z;
    }

    public Bucket(RawBucket rawBucket, List<DataSource> list) {
        this(2, rawBucket.zzagZ, rawBucket.zzaTo, rawBucket.zzaTe, rawBucket.zzaUV, zza(rawBucket.zzaTq, list), rawBucket.zzaTr, rawBucket.zzaTs);
    }

    private static List<DataSet> zza(Collection<RawDataSet> collection, List<DataSource> list) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (RawDataSet dataSet : collection) {
            arrayList.add(new DataSet(dataSet, list));
        }
        return arrayList;
    }

    public static String zzaS(int i) {
        switch (i) {
            case 0:
                return "unknown";
            case 1:
                return "time";
            case 2:
                return "session";
            case 3:
                return "type";
            case 4:
                return "segment";
            default:
                return "bug";
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Bucket) {
            Bucket bucket = (Bucket) obj;
            obj = (this.zzagZ == bucket.zzagZ && this.zzaTo == bucket.zzaTo && this.zzaTp == bucket.zzaTp && zzbe.equal(this.zzaTq, bucket.zzaTq) && this.zzaTr == bucket.zzaTr && this.zzaTs == bucket.zzaTs) ? 1 : null;
            if (obj != null) {
                return true;
            }
        }
        return false;
    }

    public String getActivity() {
        return com.google.android.gms.fitness.zza.getName(this.zzaTp);
    }

    public int getBucketType() {
        return this.zzaTr;
    }

    public DataSet getDataSet(DataType dataType) {
        for (DataSet dataSet : this.zzaTq) {
            if (dataSet.getDataType().equals(dataType)) {
                return dataSet;
            }
        }
        return null;
    }

    public List<DataSet> getDataSets() {
        return this.zzaTq;
    }

    public long getEndTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.zzaTo, TimeUnit.MILLISECONDS);
    }

    public Session getSession() {
        return this.zzaTe;
    }

    public long getStartTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.zzagZ, TimeUnit.MILLISECONDS);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.zzagZ), Long.valueOf(this.zzaTo), Integer.valueOf(this.zzaTp), Integer.valueOf(this.zzaTr)});
    }

    public String toString() {
        return zzbe.zzt(this).zzg("startTime", Long.valueOf(this.zzagZ)).zzg("endTime", Long.valueOf(this.zzaTo)).zzg("activity", Integer.valueOf(this.zzaTp)).zzg("dataSets", this.zzaTq).zzg("bucketType", zzaS(this.zzaTr)).zzg("serverHasMoreData", Boolean.valueOf(this.zzaTs)).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzagZ);
        zzd.zza(parcel, 2, this.zzaTo);
        zzd.zza(parcel, 3, getSession(), i, false);
        zzd.zzc(parcel, 4, this.zzaTp);
        zzd.zzc(parcel, 5, getDataSets(), false);
        zzd.zzc(parcel, 6, getBucketType());
        zzd.zza(parcel, 7, zztE());
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, zze);
    }

    public final boolean zza(Bucket bucket) {
        return this.zzagZ == bucket.zzagZ && this.zzaTo == bucket.zzaTo && this.zzaTp == bucket.zzaTp && this.zzaTr == bucket.zzaTr;
    }

    public final int zztD() {
        return this.zzaTp;
    }

    public final boolean zztE() {
        if (this.zzaTs) {
            return true;
        }
        for (DataSet zztE : this.zzaTq) {
            if (zztE.zztE()) {
                return true;
            }
        }
        return false;
    }
}
