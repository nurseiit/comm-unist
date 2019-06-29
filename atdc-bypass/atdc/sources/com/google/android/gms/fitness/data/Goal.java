package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbg;
import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Calendar;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class Goal extends zza {
    public static final Creator<Goal> CREATOR = new zzs();
    public static final int OBJECTIVE_TYPE_DURATION = 2;
    public static final int OBJECTIVE_TYPE_FREQUENCY = 3;
    public static final int OBJECTIVE_TYPE_METRIC = 1;
    private final int versionCode;
    private final long zzaUH;
    private final long zzaUI;
    private final List<Integer> zzaUJ;
    private final Recurrence zzaUK;
    private final int zzaUL;
    private final MetricObjective zzaUM;
    private final DurationObjective zzaUN;
    private final FrequencyObjective zzaUO;

    public static class MismatchedGoalException extends IllegalStateException {
        public MismatchedGoalException(String str) {
            super(str);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ObjectiveType {
    }

    public static class DurationObjective extends zza {
        public static final Creator<DurationObjective> CREATOR = new zzp();
        private final int versionCode;
        private final long zzaUP;

        DurationObjective(int i, long j) {
            this.versionCode = i;
            this.zzaUP = j;
        }

        public DurationObjective(long j, TimeUnit timeUnit) {
            this(1, timeUnit.toNanos(j));
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof DurationObjective) {
                if ((this.zzaUP == ((DurationObjective) obj).zzaUP ? 1 : null) != null) {
                    return true;
                }
            }
            return false;
        }

        public long getDuration(TimeUnit timeUnit) {
            return timeUnit.convert(this.zzaUP, TimeUnit.NANOSECONDS);
        }

        public int hashCode() {
            return (int) this.zzaUP;
        }

        public String toString() {
            return zzbe.zzt(this).zzg("duration", Long.valueOf(this.zzaUP)).toString();
        }

        public void writeToParcel(Parcel parcel, int i) {
            i = zzd.zze(parcel);
            zzd.zza(parcel, 1, this.zzaUP);
            zzd.zzc(parcel, 1000, this.versionCode);
            zzd.zzI(parcel, i);
        }
    }

    public static class FrequencyObjective extends zza {
        public static final Creator<FrequencyObjective> CREATOR = new zzr();
        private final int frequency;
        private final int versionCode;

        public FrequencyObjective(int i) {
            this(1, i);
        }

        FrequencyObjective(int i, int i2) {
            this.versionCode = i;
            this.frequency = i2;
        }

        /* JADX WARNING: Missing block: B:4:0x000c, code skipped:
            if (r1.frequency == ((com.google.android.gms.fitness.data.Goal.FrequencyObjective) r2).frequency) goto L_0x0011;
     */
        public boolean equals(java.lang.Object r2) {
            /*
            r1 = this;
            if (r1 == r2) goto L_0x0011;
        L_0x0002:
            r0 = r2 instanceof com.google.android.gms.fitness.data.Goal.FrequencyObjective;
            if (r0 == 0) goto L_0x000f;
        L_0x0006:
            r2 = (com.google.android.gms.fitness.data.Goal.FrequencyObjective) r2;
            r0 = r1.frequency;
            r2 = r2.frequency;
            if (r0 != r2) goto L_0x000f;
        L_0x000e:
            goto L_0x0011;
        L_0x000f:
            r2 = 0;
            return r2;
        L_0x0011:
            r2 = 1;
            return r2;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.fitness.data.Goal$FrequencyObjective.equals(java.lang.Object):boolean");
        }

        public int getFrequency() {
            return this.frequency;
        }

        public int hashCode() {
            return this.frequency;
        }

        public String toString() {
            return zzbe.zzt(this).zzg("frequency", Integer.valueOf(this.frequency)).toString();
        }

        public void writeToParcel(Parcel parcel, int i) {
            i = zzd.zze(parcel);
            zzd.zzc(parcel, 1, getFrequency());
            zzd.zzc(parcel, 1000, this.versionCode);
            zzd.zzI(parcel, i);
        }
    }

    public static class MetricObjective extends zza {
        public static final Creator<MetricObjective> CREATOR = new zzx();
        private final double value;
        private final int versionCode;
        private final String zzaUQ;
        private final double zzaUR;

        MetricObjective(int i, String str, double d, double d2) {
            this.versionCode = i;
            this.zzaUQ = str;
            this.value = d;
            this.zzaUR = d2;
        }

        public MetricObjective(String str, double d) {
            this(1, str, d, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof MetricObjective) {
                MetricObjective metricObjective = (MetricObjective) obj;
                obj = (zzbe.equal(this.zzaUQ, metricObjective.zzaUQ) && this.value == metricObjective.value && this.zzaUR == metricObjective.zzaUR) ? 1 : null;
                if (obj != null) {
                    return true;
                }
            }
            return false;
        }

        public String getDataTypeName() {
            return this.zzaUQ;
        }

        public double getValue() {
            return this.value;
        }

        public int hashCode() {
            return this.zzaUQ.hashCode();
        }

        public String toString() {
            return zzbe.zzt(this).zzg("dataTypeName", this.zzaUQ).zzg(Param.VALUE, Double.valueOf(this.value)).zzg("initialValue", Double.valueOf(this.zzaUR)).toString();
        }

        public void writeToParcel(Parcel parcel, int i) {
            i = zzd.zze(parcel);
            zzd.zza(parcel, 1, getDataTypeName(), false);
            zzd.zza(parcel, 2, getValue());
            zzd.zza(parcel, 3, this.zzaUR);
            zzd.zzc(parcel, 1000, this.versionCode);
            zzd.zzI(parcel, i);
        }
    }

    public static class Recurrence extends zza {
        public static final Creator<Recurrence> CREATOR = new zzab();
        public static final int UNIT_DAY = 1;
        public static final int UNIT_MONTH = 3;
        public static final int UNIT_WEEK = 2;
        private final int count;
        private final int versionCode;
        private final int zzaUS;

        @Retention(RetentionPolicy.SOURCE)
        public @interface RecurrenceUnit {
        }

        public Recurrence(int i, int i2) {
            this(1, i, i2);
        }

        Recurrence(int i, int i2, int i3) {
            this.versionCode = i;
            this.count = i2;
            boolean z = i3 > 0 && i3 <= 3;
            zzbo.zzae(z);
            this.zzaUS = i3;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Recurrence) {
                Recurrence recurrence = (Recurrence) obj;
                obj = (this.count == recurrence.count && this.zzaUS == recurrence.zzaUS) ? 1 : null;
                if (obj != null) {
                    return true;
                }
            }
            return false;
        }

        public int getCount() {
            return this.count;
        }

        public int getUnit() {
            return this.zzaUS;
        }

        public int hashCode() {
            return this.zzaUS;
        }

        public String toString() {
            Object obj;
            zzbg zzg = zzbe.zzt(this).zzg("count", Integer.valueOf(this.count));
            String str = "unit";
            switch (this.zzaUS) {
                case 1:
                    obj = "day";
                    break;
                case 2:
                    obj = "week";
                    break;
                case 3:
                    obj = "month";
                    break;
                default:
                    throw new IllegalArgumentException("invalid unit value");
            }
            return zzg.zzg(str, obj).toString();
        }

        public void writeToParcel(Parcel parcel, int i) {
            i = zzd.zze(parcel);
            zzd.zzc(parcel, 1, getCount());
            zzd.zzc(parcel, 2, getUnit());
            zzd.zzc(parcel, 1000, this.versionCode);
            zzd.zzI(parcel, i);
        }
    }

    Goal(int i, long j, long j2, List<Integer> list, Recurrence recurrence, int i2, MetricObjective metricObjective, DurationObjective durationObjective, FrequencyObjective frequencyObjective) {
        this.versionCode = i;
        this.zzaUH = j;
        this.zzaUI = j2;
        this.zzaUJ = list;
        this.zzaUK = recurrence;
        this.zzaUL = i2;
        this.zzaUM = metricObjective;
        this.zzaUN = durationObjective;
        this.zzaUO = frequencyObjective;
    }

    private static String zzaW(int i) {
        switch (i) {
            case 0:
                return "unknown";
            case 1:
                return "metric";
            case 2:
                return "duration";
            case 3:
                return "frequency";
            default:
                throw new IllegalArgumentException("invalid objective type value");
        }
    }

    private final void zzaX(int i) throws MismatchedGoalException {
        if (i != this.zzaUL) {
            throw new MismatchedGoalException(String.format("%s goal does not have %s objective", new Object[]{zzaW(this.zzaUL), zzaW(i)}));
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Goal) {
            Goal goal = (Goal) obj;
            obj = (this.zzaUH == goal.zzaUH && this.zzaUI == goal.zzaUI && zzbe.equal(this.zzaUJ, goal.zzaUJ) && zzbe.equal(this.zzaUK, goal.zzaUK) && this.zzaUL == goal.zzaUL && zzbe.equal(this.zzaUM, goal.zzaUM) && zzbe.equal(this.zzaUN, goal.zzaUN) && zzbe.equal(this.zzaUO, goal.zzaUO)) ? 1 : null;
            if (obj != null) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    public String getActivityName() {
        return (this.zzaUJ.isEmpty() || this.zzaUJ.size() > 1) ? null : com.google.android.gms.fitness.zza.getName(((Integer) this.zzaUJ.get(0)).intValue());
    }

    public long getCreateTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.zzaUH, TimeUnit.NANOSECONDS);
    }

    public DurationObjective getDurationObjective() {
        zzaX(2);
        return this.zzaUN;
    }

    public long getEndTime(Calendar calendar, TimeUnit timeUnit) {
        long timeInMillis;
        TimeUnit timeUnit2;
        if (this.zzaUK != null) {
            Calendar instance = Calendar.getInstance();
            instance.setTime(calendar.getTime());
            switch (this.zzaUK.zzaUS) {
                case 1:
                    instance.add(5, 1);
                    break;
                case 2:
                    instance.add(4, 1);
                    instance.set(7, 2);
                    break;
                case 3:
                    instance.add(2, 1);
                    instance.set(5, 1);
                    break;
                default:
                    int zza = this.zzaUK.zzaUS;
                    StringBuilder stringBuilder = new StringBuilder(24);
                    stringBuilder.append("Invalid unit ");
                    stringBuilder.append(zza);
                    throw new IllegalArgumentException(stringBuilder.toString());
            }
            instance.set(11, 0);
            timeInMillis = instance.getTimeInMillis();
            timeUnit2 = TimeUnit.MILLISECONDS;
        } else {
            timeInMillis = this.zzaUI;
            timeUnit2 = TimeUnit.NANOSECONDS;
        }
        return timeUnit.convert(timeInMillis, timeUnit2);
    }

    public FrequencyObjective getFrequencyObjective() {
        zzaX(3);
        return this.zzaUO;
    }

    public MetricObjective getMetricObjective() {
        zzaX(1);
        return this.zzaUM;
    }

    public int getObjectiveType() {
        return this.zzaUL;
    }

    public Recurrence getRecurrence() {
        return this.zzaUK;
    }

    /* JADX WARNING: Missing block: B:7:0x003c, code skipped:
            r0.set(r5, r3);
     */
    public long getStartTime(java.util.Calendar r5, java.util.concurrent.TimeUnit r6) {
        /*
        r4 = this;
        r0 = r4.zzaUK;
        if (r0 == 0) goto L_0x0050;
    L_0x0004:
        r0 = java.util.Calendar.getInstance();
        r5 = r5.getTime();
        r0.setTime(r5);
        r5 = r4.zzaUK;
        r5 = r5.zzaUS;
        r1 = 0;
        r2 = 11;
        switch(r5) {
            case 1: goto L_0x003f;
            case 2: goto L_0x004d;
            case 3: goto L_0x003a;
            default: goto L_0x001b;
        };
    L_0x001b:
        r5 = new java.lang.IllegalArgumentException;
        r6 = r4.zzaUK;
        r6 = r6.zzaUS;
        r0 = 24;
        r1 = new java.lang.StringBuilder;
        r1.<init>(r0);
        r0 = "Invalid unit ";
        r1.append(r0);
        r1.append(r6);
        r6 = r1.toString();
        r5.<init>(r6);
        throw r5;
    L_0x003a:
        r5 = 5;
        r3 = 1;
    L_0x003c:
        r0.set(r5, r3);
    L_0x003f:
        r0.set(r2, r1);
        r0 = r0.getTimeInMillis();
        r5 = java.util.concurrent.TimeUnit.MILLISECONDS;
    L_0x0048:
        r5 = r6.convert(r0, r5);
        return r5;
    L_0x004d:
        r5 = 7;
        r3 = 2;
        goto L_0x003c;
    L_0x0050:
        r0 = r4.zzaUH;
        r5 = java.util.concurrent.TimeUnit.NANOSECONDS;
        goto L_0x0048;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.fitness.data.Goal.getStartTime(java.util.Calendar, java.util.concurrent.TimeUnit):long");
    }

    public int hashCode() {
        return this.zzaUL;
    }

    public String toString() {
        return zzbe.zzt(this).zzg("activity", getActivityName()).zzg("recurrence", this.zzaUK).zzg("metricObjective", this.zzaUM).zzg("durationObjective", this.zzaUN).zzg("frequencyObjective", this.zzaUO).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzaUH);
        zzd.zza(parcel, 2, this.zzaUI);
        zzd.zzd(parcel, 3, this.zzaUJ, false);
        zzd.zza(parcel, 4, getRecurrence(), i, false);
        zzd.zzc(parcel, 5, getObjectiveType());
        zzd.zza(parcel, 6, this.zzaUM, i, false);
        zzd.zza(parcel, 7, this.zzaUN, i, false);
        zzd.zzc(parcel, 1000, this.versionCode);
        zzd.zza(parcel, 8, this.zzaUO, i, false);
        zzd.zzI(parcel, zze);
    }
}
