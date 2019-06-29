package com.google.android.gms.fitness.data;

import com.google.android.gms.internal.zzbug;
import com.google.android.gms.internal.zzbuh;
import java.util.concurrent.TimeUnit;

final class zzf implements zzbug<DataPoint, DataType> {
    public static final zzf zzaTt = new zzf();

    private zzf() {
    }

    public final /* synthetic */ long zza(Object obj, TimeUnit timeUnit) {
        DataPoint dataPoint = (DataPoint) obj;
        return dataPoint.getEndTime(timeUnit) - dataPoint.getStartTime(timeUnit);
    }

    public final /* synthetic */ double zzb(Object obj, int i) {
        return (double) ((DataPoint) obj).zzaT(i).asFloat();
    }

    public final /* synthetic */ int zzc(Object obj, int i) {
        return ((DataPoint) obj).zzaT(i).asInt();
    }

    public final /* synthetic */ boolean zzd(Object obj, int i) {
        return ((DataPoint) obj).zzaT(i).isSet();
    }

    public final zzbuh<DataType> zztF() {
        return zzg.zzaTu;
    }

    public final /* synthetic */ Object zzx(Object obj) {
        return ((DataPoint) obj).getDataType();
    }

    public final /* synthetic */ String zzy(Object obj) {
        return ((DataPoint) obj).getDataType().getName();
    }
}
