package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.fitness.data.DataPoint;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.internal.zzbxg;
import com.google.android.gms.internal.zzbxh;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;

public class DataUpdateRequest extends zza {
    public static final Creator<DataUpdateRequest> CREATOR = new zzy();
    private final long zzaTo;
    private final DataSet zzaVi;
    private final zzbxg zzaWo;
    private final long zzagZ;
    private final int zzaku;

    public static class Builder {
        private long zzaTo;
        private DataSet zzaVi;
        private long zzagZ;

        public DataUpdateRequest build() {
            zzbo.zza(this.zzagZ, (Object) "Must set a non-zero value for startTimeMillis/startTime");
            zzbo.zza(this.zzaTo, (Object) "Must set a non-zero value for endTimeMillis/endTime");
            zzbo.zzb(this.zzaVi, (Object) "Must set the data set");
            for (DataPoint dataPoint : this.zzaVi.getDataPoints()) {
                long startTime = dataPoint.getStartTime(TimeUnit.MILLISECONDS);
                long endTime = dataPoint.getEndTime(TimeUnit.MILLISECONDS);
                int i = (startTime > endTime || ((startTime != 0 && startTime < this.zzagZ) || ((startTime != 0 && startTime > this.zzaTo) || endTime > this.zzaTo || endTime < this.zzagZ))) ? 1 : 0;
                zzbo.zza(i ^ 1, "Data Point's startTimeMillis %d, endTimeMillis %d should lie between timeRange provided in the request. StartTimeMillis %d, EndTimeMillis: %d", Long.valueOf(startTime), Long.valueOf(endTime), Long.valueOf(this.zzagZ), Long.valueOf(this.zzaTo));
            }
            return new DataUpdateRequest(this, null);
        }

        public Builder setDataSet(DataSet dataSet) {
            zzbo.zzb((Object) dataSet, (Object) "Must set the data set");
            this.zzaVi = dataSet;
            return this;
        }

        public Builder setTimeInterval(long j, long j2, TimeUnit timeUnit) {
            zzbo.zzb(j > 0, "Invalid start time :%d", Long.valueOf(j));
            zzbo.zzb(j2 >= j, "Invalid end time :%d", Long.valueOf(j2));
            this.zzagZ = timeUnit.toMillis(j);
            this.zzaTo = timeUnit.toMillis(j2);
            return this;
        }
    }

    DataUpdateRequest(int i, long j, long j2, DataSet dataSet, IBinder iBinder) {
        this.zzaku = i;
        this.zzagZ = j;
        this.zzaTo = j2;
        this.zzaVi = dataSet;
        this.zzaWo = zzbxh.zzW(iBinder);
    }

    private DataUpdateRequest(long j, long j2, DataSet dataSet, IBinder iBinder) {
        this.zzaku = 1;
        this.zzagZ = j;
        this.zzaTo = j2;
        this.zzaVi = dataSet;
        this.zzaWo = zzbxh.zzW(iBinder);
    }

    private DataUpdateRequest(Builder builder) {
        this(builder.zzagZ, builder.zzaTo, builder.zzaVi, null);
    }

    public DataUpdateRequest(DataUpdateRequest dataUpdateRequest, IBinder iBinder) {
        this(dataUpdateRequest.zzagZ, dataUpdateRequest.zzaTo, dataUpdateRequest.getDataSet(), iBinder);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof DataUpdateRequest) {
            DataUpdateRequest dataUpdateRequest = (DataUpdateRequest) obj;
            obj = (this.zzagZ == dataUpdateRequest.zzagZ && this.zzaTo == dataUpdateRequest.zzaTo && zzbe.equal(this.zzaVi, dataUpdateRequest.zzaVi)) ? 1 : null;
            if (obj != null) {
                return true;
            }
        }
        return false;
    }

    public IBinder getCallbackBinder() {
        return this.zzaWo == null ? null : this.zzaWo.asBinder();
    }

    public DataSet getDataSet() {
        return this.zzaVi;
    }

    public long getEndTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.zzaTo, TimeUnit.MILLISECONDS);
    }

    public long getStartTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.zzagZ, TimeUnit.MILLISECONDS);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.zzagZ), Long.valueOf(this.zzaTo), this.zzaVi});
    }

    public String toString() {
        return zzbe.zzt(this).zzg("startTimeMillis", Long.valueOf(this.zzagZ)).zzg("endTimeMillis", Long.valueOf(this.zzaTo)).zzg("dataSet", this.zzaVi).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzagZ);
        zzd.zza(parcel, 2, this.zzaTo);
        zzd.zza(parcel, 3, getDataSet(), i, false);
        zzd.zza(parcel, 4, getCallbackBinder(), false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, zze);
    }

    public final long zzmc() {
        return this.zzagZ;
    }

    public final long zztU() {
        return this.zzaTo;
    }
}
