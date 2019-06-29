package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.zzt;
import com.google.android.gms.fitness.data.zzu;
import com.google.android.gms.internal.zzbxg;
import com.google.android.gms.internal.zzbxh;
import com.google.android.gms.internal.zzcbz;
import com.google.android.gms.location.LocationRequest;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;

public final class zzan extends zza {
    public static final Creator<zzan> CREATOR = new zzao();
    private final PendingIntent mPendingIntent;
    private DataSource zzaUd;
    private DataType zzaUe;
    private final long zzaVj;
    private final int zzaVk;
    private zzt zzaWV;
    private final long zzaWW;
    private final long zzaWX;
    private final List<LocationRequest> zzaWY;
    private final long zzaWZ;
    private final zzbxg zzaWo;
    private final List<zzcbz> zzaXa;
    private final int zzaku;

    zzan(int i, DataSource dataSource, DataType dataType, IBinder iBinder, int i2, int i3, long j, long j2, PendingIntent pendingIntent, long j3, int i4, List<LocationRequest> list, long j4, IBinder iBinder2) {
        this.zzaku = i;
        this.zzaUd = dataSource;
        this.zzaUe = dataType;
        this.zzaWV = iBinder == null ? null : zzu.zzN(iBinder);
        this.zzaVj = j == 0 ? (long) i2 : j;
        this.zzaWX = j3;
        this.zzaWW = j2 == 0 ? (long) i3 : j2;
        this.zzaWY = list;
        this.mPendingIntent = pendingIntent;
        this.zzaVk = i4;
        this.zzaXa = Collections.emptyList();
        this.zzaWZ = j4;
        this.zzaWo = zzbxh.zzW(iBinder2);
    }

    private zzan(DataSource dataSource, DataType dataType, zzt zzt, PendingIntent pendingIntent, long j, long j2, long j3, int i, List<LocationRequest> list, List<zzcbz> list2, long j4, zzbxg zzbxg) {
        this.zzaku = 6;
        this.zzaUd = dataSource;
        this.zzaUe = dataType;
        this.zzaWV = zzt;
        this.mPendingIntent = pendingIntent;
        this.zzaVj = j;
        this.zzaWX = j2;
        this.zzaWW = j3;
        this.zzaVk = i;
        this.zzaWY = null;
        this.zzaXa = list2;
        this.zzaWZ = j4;
        this.zzaWo = zzbxg;
    }

    public zzan(SensorRequest sensorRequest, zzt zzt, PendingIntent pendingIntent, zzbxg zzbxg) {
        SensorRequest sensorRequest2 = sensorRequest;
        this(sensorRequest.getDataSource(), sensorRequest.getDataType(), zzt, pendingIntent, sensorRequest2.getSamplingRate(TimeUnit.MICROSECONDS), sensorRequest2.getFastestRate(TimeUnit.MICROSECONDS), sensorRequest2.getMaxDeliveryLatency(TimeUnit.MICROSECONDS), sensorRequest.getAccuracyMode(), null, Collections.emptyList(), sensorRequest.zztW(), zzbxg);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzan) {
            zzan zzan = (zzan) obj;
            obj = (zzbe.equal(this.zzaUd, zzan.zzaUd) && zzbe.equal(this.zzaUe, zzan.zzaUe) && this.zzaVj == zzan.zzaVj && this.zzaWX == zzan.zzaWX && this.zzaWW == zzan.zzaWW && this.zzaVk == zzan.zzaVk && zzbe.equal(this.zzaWY, zzan.zzaWY)) ? 1 : null;
            if (obj != null) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzaUd, this.zzaUe, this.zzaWV, Long.valueOf(this.zzaVj), Long.valueOf(this.zzaWX), Long.valueOf(this.zzaWW), Integer.valueOf(this.zzaVk), this.zzaWY});
    }

    public final String toString() {
        return String.format("SensorRegistrationRequest{type %s source %s interval %s fastest %s latency %s}", new Object[]{this.zzaUe, this.zzaUd, Long.valueOf(this.zzaVj), Long.valueOf(this.zzaWX), Long.valueOf(this.zzaWW)});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzaUd, i, false);
        zzd.zza(parcel, 2, this.zzaUe, i, false);
        IBinder iBinder = null;
        zzd.zza(parcel, 3, this.zzaWV == null ? null : this.zzaWV.asBinder(), false);
        zzd.zzc(parcel, 4, 0);
        zzd.zzc(parcel, 5, 0);
        zzd.zza(parcel, 6, this.zzaVj);
        zzd.zza(parcel, 7, this.zzaWW);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zza(parcel, 8, this.mPendingIntent, i, false);
        zzd.zza(parcel, 9, this.zzaWX);
        zzd.zzc(parcel, 10, this.zzaVk);
        zzd.zzc(parcel, 11, this.zzaWY, false);
        zzd.zza(parcel, 12, this.zzaWZ);
        if (this.zzaWo != null) {
            iBinder = this.zzaWo.asBinder();
        }
        zzd.zza(parcel, 13, iBinder, false);
        zzd.zzI(parcel, zze);
    }
}
