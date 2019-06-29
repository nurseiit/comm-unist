package com.google.android.gms.awareness.fence;

import android.support.annotation.Nullable;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.internal.zzbiy;
import com.google.android.gms.internal.zzbjq;
import com.google.android.gms.internal.zzbjr;
import com.google.android.gms.internal.zzbjs;
import java.util.TimeZone;

public final class TimeFence {
    public static final int DAY_OF_WEEK_FRIDAY = 6;
    public static final int DAY_OF_WEEK_MONDAY = 2;
    public static final int DAY_OF_WEEK_SATURDAY = 7;
    public static final int DAY_OF_WEEK_SUNDAY = 1;
    public static final int DAY_OF_WEEK_THURSDAY = 5;
    public static final int DAY_OF_WEEK_TUESDAY = 3;
    public static final int DAY_OF_WEEK_WEDNESDAY = 4;
    public static final int TIME_INSTANT_SUNRISE = 1;
    public static final int TIME_INSTANT_SUNSET = 2;
    public static final int TIME_INTERVAL_AFTERNOON = 5;
    public static final int TIME_INTERVAL_EVENING = 6;
    public static final int TIME_INTERVAL_HOLIDAY = 3;
    public static final int TIME_INTERVAL_MORNING = 4;
    public static final int TIME_INTERVAL_NIGHT = 7;
    public static final int TIME_INTERVAL_WEEKDAY = 1;
    public static final int TIME_INTERVAL_WEEKEND = 2;

    private TimeFence() {
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    public static AwarenessFence aroundTimeInstant(int i, long j, long j2) {
        zzbjq zzc;
        switch (i) {
            case 1:
                zzc = zzbjq.zzc(j, j2);
                break;
            case 2:
                zzc = zzbjq.zzd(j, j2);
                break;
            default:
                StringBuilder stringBuilder = new StringBuilder(40);
                stringBuilder.append("Unknown time instant label = ");
                stringBuilder.append(i);
                throw new IllegalArgumentException(stringBuilder.toString());
        }
        return zzbiy.zza(zzc);
    }

    public static AwarenessFence inDailyInterval(@Nullable TimeZone timeZone, long j, long j2) {
        return zzbiy.zza(zzbjr.zza(2, timeZone, j, j2));
    }

    @Deprecated
    public static AwarenessFence inFridayInterval(@Nullable TimeZone timeZone, long j, long j2) {
        return zzbiy.zza(zzbjr.zza(10, timeZone, j, j2));
    }

    public static AwarenessFence inInterval(long j, long j2) {
        return zzbiy.zza(zzbjr.zze(j, j2));
    }

    public static AwarenessFence inIntervalOfDay(int i, @Nullable TimeZone timeZone, long j, long j2) {
        return zzbiy.zza(zzbjr.zzb(i, timeZone, j, j2));
    }

    @Deprecated
    public static AwarenessFence inMondayInterval(@Nullable TimeZone timeZone, long j, long j2) {
        return zzbiy.zza(zzbjr.zza(6, timeZone, j, j2));
    }

    @Deprecated
    public static AwarenessFence inSaturdayInterval(@Nullable TimeZone timeZone, long j, long j2) {
        return zzbiy.zza(zzbjr.zza(11, timeZone, j, j2));
    }

    @Deprecated
    public static AwarenessFence inSundayInterval(@Nullable TimeZone timeZone, long j, long j2) {
        return zzbiy.zza(zzbjr.zza(5, timeZone, j, j2));
    }

    @Deprecated
    public static AwarenessFence inThursdayInterval(@Nullable TimeZone timeZone, long j, long j2) {
        return zzbiy.zza(zzbjr.zza(9, timeZone, j, j2));
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    public static AwarenessFence inTimeInterval(int i) {
        return zzbiy.zza(zzbjs.zzj(1, i));
    }

    @Deprecated
    public static AwarenessFence inTuesdayInterval(@Nullable TimeZone timeZone, long j, long j2) {
        return zzbiy.zza(zzbjr.zza(7, timeZone, j, j2));
    }

    @Deprecated
    public static AwarenessFence inWednesdayInterval(@Nullable TimeZone timeZone, long j, long j2) {
        return zzbiy.zza(zzbjr.zza(8, timeZone, j, j2));
    }
}
