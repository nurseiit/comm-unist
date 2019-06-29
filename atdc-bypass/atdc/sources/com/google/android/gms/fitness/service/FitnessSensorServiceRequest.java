package com.google.android.gms.fitness.service;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.zzt;
import com.google.android.gms.fitness.data.zzu;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;

public class FitnessSensorServiceRequest extends zza {
    public static final Creator<FitnessSensorServiceRequest> CREATOR = new zzb();
    public static final int UNSPECIFIED = -1;
    private final DataSource zzaUd;
    private final zzt zzaWV;
    private final long zzaXE;
    private final long zzaXF;
    private final int zzaku;

    FitnessSensorServiceRequest(int i, DataSource dataSource, IBinder iBinder, long j, long j2) {
        this.zzaku = i;
        this.zzaUd = dataSource;
        this.zzaWV = zzu.zzN(iBinder);
        this.zzaXE = j;
        this.zzaXF = j2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FitnessSensorServiceRequest) {
            FitnessSensorServiceRequest fitnessSensorServiceRequest = (FitnessSensorServiceRequest) obj;
            obj = (zzbe.equal(this.zzaUd, fitnessSensorServiceRequest.zzaUd) && this.zzaXE == fitnessSensorServiceRequest.zzaXE && this.zzaXF == fitnessSensorServiceRequest.zzaXF) ? 1 : null;
            if (obj != null) {
                return true;
            }
        }
        return false;
    }

    public long getBatchInterval(TimeUnit timeUnit) {
        return timeUnit.convert(this.zzaXF, TimeUnit.MICROSECONDS);
    }

    public DataSource getDataSource() {
        return this.zzaUd;
    }

    public SensorEventDispatcher getDispatcher() {
        return new zzc(this.zzaWV);
    }

    public long getSamplingRate(TimeUnit timeUnit) {
        return this.zzaXE == -1 ? -1 : timeUnit.convert(this.zzaXE, TimeUnit.MICROSECONDS);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzaUd, Long.valueOf(this.zzaXE), Long.valueOf(this.zzaXF)});
    }

    public String toString() {
        return String.format("FitnessSensorServiceRequest{%s}", new Object[]{this.zzaUd});
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, getDataSource(), i, false);
        zzd.zza(parcel, 2, this.zzaWV.asBinder(), false);
        zzd.zza(parcel, 3, this.zzaXE);
        zzd.zza(parcel, 4, this.zzaXF);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, zze);
    }
}
