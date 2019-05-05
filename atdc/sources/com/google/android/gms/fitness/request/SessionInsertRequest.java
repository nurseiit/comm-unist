package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.fitness.data.DataPoint;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.internal.zzbue;
import com.google.android.gms.internal.zzbxg;
import com.google.android.gms.internal.zzbxh;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class SessionInsertRequest extends zza {
    public static final Creator<SessionInsertRequest> CREATOR = new zzat();
    private final int versionCode;
    private final Session zzaXe;
    private final List<DataSet> zzaXf;
    private final List<DataPoint> zzaXg;
    private final zzbxg zzaXh;

    public static class Builder {
        private Session zzaXe;
        private List<DataSet> zzaXf = new ArrayList();
        private List<DataPoint> zzaXg = new ArrayList();
        private List<DataSource> zzaXi = new ArrayList();

        private final void zzd(DataPoint dataPoint) {
            TimeUnit timeUnit;
            boolean z;
            DataPoint dataPoint2 = dataPoint;
            long startTime = this.zzaXe.getStartTime(TimeUnit.NANOSECONDS);
            long endTime = this.zzaXe.getEndTime(TimeUnit.NANOSECONDS);
            long timestamp = dataPoint2.getTimestamp(TimeUnit.NANOSECONDS);
            if (timestamp != 0) {
                timeUnit = TimeUnit.MILLISECONDS;
                if (timestamp < startTime || timestamp > endTime) {
                    timestamp = zzbue.zza(timestamp, TimeUnit.NANOSECONDS, timeUnit);
                }
                z = timestamp >= startTime && timestamp <= endTime;
                zzbo.zza(z, "Data point %s has time stamp outside session interval [%d, %d]", dataPoint2, Long.valueOf(startTime), Long.valueOf(endTime));
                if (dataPoint2.getTimestamp(TimeUnit.NANOSECONDS) != timestamp) {
                    Log.w("Fitness", String.format("Data point timestamp [%d] is truncated to [%d] to match the precision [%s] of the session start and end time", new Object[]{Long.valueOf(dataPoint2.getTimestamp(TimeUnit.NANOSECONDS)), Long.valueOf(timestamp), timeUnit}));
                    dataPoint2.setTimestamp(timestamp, TimeUnit.NANOSECONDS);
                }
            }
            startTime = this.zzaXe.getStartTime(TimeUnit.NANOSECONDS);
            endTime = this.zzaXe.getEndTime(TimeUnit.NANOSECONDS);
            timestamp = dataPoint2.getStartTime(TimeUnit.NANOSECONDS);
            long endTime2 = dataPoint2.getEndTime(TimeUnit.NANOSECONDS);
            if (timestamp != 0 && endTime2 != 0) {
                timeUnit = TimeUnit.MILLISECONDS;
                if (endTime2 > endTime) {
                    endTime2 = zzbue.zza(endTime2, TimeUnit.NANOSECONDS, timeUnit);
                }
                z = timestamp >= startTime && endTime2 <= endTime;
                zzbo.zza(z, "Data point %s has start and end times outside session interval [%d, %d]", dataPoint2, Long.valueOf(startTime), Long.valueOf(endTime));
                if (endTime2 != dataPoint2.getEndTime(TimeUnit.NANOSECONDS)) {
                    Log.w("Fitness", String.format("Data point end time [%d] is truncated to [%d] to match the precision [%s] of the session start and end time", new Object[]{Long.valueOf(dataPoint2.getEndTime(TimeUnit.NANOSECONDS)), Long.valueOf(endTime2), timeUnit}));
                    dataPoint2.setTimeInterval(timestamp, endTime2, TimeUnit.NANOSECONDS);
                }
            }
        }

        public Builder addAggregateDataPoint(DataPoint dataPoint) {
            zzbo.zzb(dataPoint != null, (Object) "Must specify a valid aggregate data point.");
            DataSource dataSource = dataPoint.getDataSource();
            zzbo.zza(this.zzaXi.contains(dataSource) ^ 1, "Data set/Aggregate data point for this data source %s is already added.", dataSource);
            DataSet.zzb(dataPoint);
            this.zzaXi.add(dataSource);
            this.zzaXg.add(dataPoint);
            return this;
        }

        public Builder addDataSet(DataSet dataSet) {
            zzbo.zzb(dataSet != null, (Object) "Must specify a valid data set.");
            DataSource dataSource = dataSet.getDataSource();
            zzbo.zza(this.zzaXi.contains(dataSource) ^ 1, "Data set for this data source %s is already added.", dataSource);
            zzbo.zzb(dataSet.getDataPoints().isEmpty() ^ 1, (Object) "No data points specified in the input data set.");
            this.zzaXi.add(dataSource);
            this.zzaXf.add(dataSet);
            return this;
        }

        public SessionInsertRequest build() {
            boolean z = false;
            zzbo.zza(this.zzaXe != null, (Object) "Must specify a valid session.");
            if (this.zzaXe.getEndTime(TimeUnit.MILLISECONDS) != 0) {
                z = true;
            }
            zzbo.zza(z, (Object) "Must specify a valid end time, cannot insert a continuing session.");
            for (DataSet dataPoints : this.zzaXf) {
                for (DataPoint zzd : dataPoints.getDataPoints()) {
                    zzd(zzd);
                }
            }
            for (DataPoint zzd2 : this.zzaXg) {
                zzd(zzd2);
            }
            return new SessionInsertRequest(this, null);
        }

        public Builder setSession(Session session) {
            this.zzaXe = session;
            return this;
        }
    }

    SessionInsertRequest(int i, Session session, List<DataSet> list, List<DataPoint> list2, IBinder iBinder) {
        this.versionCode = i;
        this.zzaXe = session;
        this.zzaXf = Collections.unmodifiableList(list);
        this.zzaXg = Collections.unmodifiableList(list2);
        this.zzaXh = zzbxh.zzW(iBinder);
    }

    private SessionInsertRequest(Session session, List<DataSet> list, List<DataPoint> list2, zzbxg zzbxg) {
        this.versionCode = 3;
        this.zzaXe = session;
        this.zzaXf = Collections.unmodifiableList(list);
        this.zzaXg = Collections.unmodifiableList(list2);
        this.zzaXh = zzbxg;
    }

    private SessionInsertRequest(Builder builder) {
        this(builder.zzaXe, builder.zzaXf, builder.zzaXg, null);
    }

    public SessionInsertRequest(SessionInsertRequest sessionInsertRequest, zzbxg zzbxg) {
        this(sessionInsertRequest.zzaXe, sessionInsertRequest.zzaXf, sessionInsertRequest.zzaXg, zzbxg);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SessionInsertRequest) {
            SessionInsertRequest sessionInsertRequest = (SessionInsertRequest) obj;
            obj = (zzbe.equal(this.zzaXe, sessionInsertRequest.zzaXe) && zzbe.equal(this.zzaXf, sessionInsertRequest.zzaXf) && zzbe.equal(this.zzaXg, sessionInsertRequest.zzaXg)) ? 1 : null;
            if (obj != null) {
                return true;
            }
        }
        return false;
    }

    public List<DataPoint> getAggregateDataPoints() {
        return this.zzaXg;
    }

    public List<DataSet> getDataSets() {
        return this.zzaXf;
    }

    public Session getSession() {
        return this.zzaXe;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzaXe, this.zzaXf, this.zzaXg});
    }

    public String toString() {
        return zzbe.zzt(this).zzg("session", this.zzaXe).zzg("dataSets", this.zzaXf).zzg("aggregateDataPoints", this.zzaXg).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, getSession(), i, false);
        zzd.zzc(parcel, 2, getDataSets(), false);
        zzd.zzc(parcel, 3, getAggregateDataPoints(), false);
        zzd.zza(parcel, 4, this.zzaXh == null ? null : this.zzaXh.asBinder(), false);
        zzd.zzc(parcel, 1000, this.versionCode);
        zzd.zzI(parcel, zze);
    }
}
