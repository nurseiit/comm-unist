package com.google.android.gms.fitness.data;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.safeparcel.zze;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;

public class DataUpdateNotification extends zza {
    public static final String ACTION = "com.google.android.gms.fitness.DATA_UPDATE_NOTIFICATION";
    public static final Creator<DataUpdateNotification> CREATOR = new zzn();
    public static final String EXTRA_DATA_UPDATE_NOTIFICATION = "vnd.google.fitness.data_udpate_notification";
    public static final int OPERATION_DELETE = 2;
    public static final int OPERATION_INSERT = 1;
    public static final int OPERATION_UPDATE = 3;
    private final long zzaUa;
    private final long zzaUb;
    private final int zzaUc;
    private final DataSource zzaUd;
    private final DataType zzaUe;
    private int zzaku;

    DataUpdateNotification(int i, long j, long j2, int i2, DataSource dataSource, DataType dataType) {
        this.zzaku = i;
        this.zzaUa = j;
        this.zzaUb = j2;
        this.zzaUc = i2;
        this.zzaUd = dataSource;
        this.zzaUe = dataType;
    }

    public static DataUpdateNotification getDataUpdateNotification(Intent intent) {
        return (DataUpdateNotification) zze.zza(intent, EXTRA_DATA_UPDATE_NOTIFICATION, CREATOR);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof DataUpdateNotification) {
            DataUpdateNotification dataUpdateNotification = (DataUpdateNotification) obj;
            obj = (this.zzaUa == dataUpdateNotification.zzaUa && this.zzaUb == dataUpdateNotification.zzaUb && this.zzaUc == dataUpdateNotification.zzaUc && zzbe.equal(this.zzaUd, dataUpdateNotification.zzaUd) && zzbe.equal(this.zzaUe, dataUpdateNotification.zzaUe)) ? 1 : null;
            if (obj != null) {
                return true;
            }
        }
        return false;
    }

    public DataSource getDataSource() {
        return this.zzaUd;
    }

    public DataType getDataType() {
        return this.zzaUe;
    }

    public int getOperationType() {
        return this.zzaUc;
    }

    public long getUpdateEndTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.zzaUb, TimeUnit.NANOSECONDS);
    }

    public long getUpdateStartTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.zzaUa, TimeUnit.NANOSECONDS);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.zzaUa), Long.valueOf(this.zzaUb), Integer.valueOf(this.zzaUc), this.zzaUd, this.zzaUe});
    }

    public String toString() {
        return zzbe.zzt(this).zzg("updateStartTimeNanos", Long.valueOf(this.zzaUa)).zzg("updateEndTimeNanos", Long.valueOf(this.zzaUb)).zzg("operationType", Integer.valueOf(this.zzaUc)).zzg("dataSource", this.zzaUd).zzg("dataType", this.zzaUe).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzaUa);
        zzd.zza(parcel, 2, this.zzaUb);
        zzd.zzc(parcel, 3, getOperationType());
        zzd.zza(parcel, 4, getDataSource(), i, false);
        zzd.zza(parcel, 5, getDataType(), i, false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, zze);
    }
}
