package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbg;
import com.google.android.gms.fitness.data.Bucket;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataSource.Builder;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.RawBucket;
import com.google.android.gms.fitness.data.RawDataSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class DataReadResult extends zza implements Result {
    public static final Creator<DataReadResult> CREATOR = new zzc();
    private final Status mStatus;
    private final List<DataSet> zzaTq;
    private final List<Bucket> zzaXu;
    private int zzaXv;
    private final List<DataSource> zzaXw;
    private final List<DataType> zzaXx;
    private final int zzaku;

    DataReadResult(int i, List<RawDataSet> list, Status status, List<RawBucket> list2, int i2, List<DataSource> list3, List<DataType> list4) {
        this.zzaku = i;
        this.mStatus = status;
        this.zzaXv = i2;
        this.zzaXw = list3;
        this.zzaXx = list4;
        this.zzaTq = new ArrayList(list.size());
        for (RawDataSet dataSet : list) {
            this.zzaTq.add(new DataSet(dataSet, list3));
        }
        this.zzaXu = new ArrayList(list2.size());
        for (RawBucket bucket : list2) {
            this.zzaXu.add(new Bucket(bucket, list3));
        }
    }

    private DataReadResult(List<DataSet> list, List<Bucket> list2, Status status) {
        this.zzaku = 5;
        this.zzaTq = list;
        this.mStatus = status;
        this.zzaXu = list2;
        this.zzaXv = 1;
        this.zzaXw = new ArrayList();
        this.zzaXx = new ArrayList();
    }

    public static DataReadResult zza(Status status, List<DataType> list, List<DataSource> list2) {
        ArrayList arrayList = new ArrayList();
        for (DataSource create : list2) {
            arrayList.add(DataSet.create(create));
        }
        for (DataType dataType : list) {
            arrayList.add(DataSet.create(new Builder().setDataType(dataType).setType(1).setName("Default").build()));
        }
        return new DataReadResult(arrayList, Collections.emptyList(), status);
    }

    private static void zza(DataSet dataSet, List<DataSet> list) {
        for (DataSet dataSet2 : list) {
            if (dataSet2.getDataSource().equals(dataSet.getDataSource())) {
                dataSet2.zzb(dataSet.getDataPoints());
                return;
            }
        }
        list.add(dataSet);
    }

    private List<RawBucket> zztY() {
        ArrayList arrayList = new ArrayList(this.zzaXu.size());
        for (Bucket rawBucket : this.zzaXu) {
            arrayList.add(new RawBucket(rawBucket, this.zzaXw, this.zzaXx));
        }
        return arrayList;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DataReadResult) {
            DataReadResult dataReadResult = (DataReadResult) obj;
            obj = (this.mStatus.equals(dataReadResult.mStatus) && zzbe.equal(this.zzaTq, dataReadResult.zzaTq) && zzbe.equal(this.zzaXu, dataReadResult.zzaXu)) ? 1 : null;
            if (obj != null) {
                return true;
            }
        }
        return false;
    }

    public List<Bucket> getBuckets() {
        return this.zzaXu;
    }

    public DataSet getDataSet(DataSource dataSource) {
        for (DataSet dataSet : this.zzaTq) {
            if (dataSource.equals(dataSet.getDataSource())) {
                return dataSet;
            }
        }
        return DataSet.create(dataSource);
    }

    public DataSet getDataSet(DataType dataType) {
        for (DataSet dataSet : this.zzaTq) {
            if (dataType.equals(dataSet.getDataType())) {
                return dataSet;
            }
        }
        return DataSet.create(new Builder().setDataType(dataType).setType(1).build());
    }

    public List<DataSet> getDataSets() {
        return this.zzaTq;
    }

    public Status getStatus() {
        return this.mStatus;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.mStatus, this.zzaTq, this.zzaXu});
    }

    public String toString() {
        int size;
        Object stringBuilder;
        zzbg zzg = zzbe.zzt(this).zzg("status", this.mStatus);
        String str = "dataSets";
        if (this.zzaTq.size() > 5) {
            size = this.zzaTq.size();
            StringBuilder stringBuilder2 = new StringBuilder(21);
            stringBuilder2.append(size);
            stringBuilder2.append(" data sets");
            stringBuilder = stringBuilder2.toString();
        } else {
            stringBuilder = this.zzaTq;
        }
        zzg = zzg.zzg(str, stringBuilder);
        str = "buckets";
        if (this.zzaXu.size() > 5) {
            size = this.zzaXu.size();
            StringBuilder stringBuilder3 = new StringBuilder(19);
            stringBuilder3.append(size);
            stringBuilder3.append(" buckets");
            stringBuilder = stringBuilder3.toString();
        } else {
            stringBuilder = this.zzaXu;
        }
        return zzg.zzg(str, stringBuilder).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        ArrayList arrayList = new ArrayList(this.zzaTq.size());
        for (DataSet rawDataSet : this.zzaTq) {
            arrayList.add(new RawDataSet(rawDataSet, this.zzaXw, this.zzaXx));
        }
        zzd.zzd(parcel, 1, arrayList, false);
        zzd.zza(parcel, 2, getStatus(), i, false);
        zzd.zzd(parcel, 3, zztY(), false);
        zzd.zzc(parcel, 5, this.zzaXv);
        zzd.zzc(parcel, 6, this.zzaXw, false);
        zzd.zzc(parcel, 7, this.zzaXx, false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, zze);
    }

    public final void zzb(DataReadResult dataReadResult) {
        for (DataSet zza : dataReadResult.getDataSets()) {
            zza(zza, this.zzaTq);
        }
        for (Bucket bucket : dataReadResult.getBuckets()) {
            for (Bucket bucket2 : this.zzaXu) {
                if (bucket2.zza(bucket)) {
                    for (DataSet zza2 : bucket.getDataSets()) {
                        zza(zza2, bucket2.getDataSets());
                    }
                }
            }
            this.zzaXu.add(bucket);
        }
    }

    public final int zztX() {
        return this.zzaXv;
    }
}
