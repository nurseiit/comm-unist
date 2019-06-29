package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.Goal.DurationObjective;
import com.google.android.gms.fitness.data.Goal.FrequencyObjective;
import com.google.android.gms.fitness.data.Goal.MetricObjective;
import com.google.android.gms.fitness.data.Goal.Recurrence;
import java.util.ArrayList;
import java.util.List;

public final class zzs implements Creator<Goal> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        List arrayList = new ArrayList();
        long j = 0;
        Recurrence recurrence = null;
        MetricObjective metricObjective = recurrence;
        DurationObjective durationObjective = metricObjective;
        FrequencyObjective frequencyObjective = durationObjective;
        int i = 0;
        long j2 = j;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 != 1000) {
                switch (i3) {
                    case 1:
                        j2 = zzb.zzi(parcel2, readInt);
                        break;
                    case 2:
                        j = zzb.zzi(parcel2, readInt);
                        break;
                    case 3:
                        zzb.zza(parcel2, readInt, arrayList, getClass().getClassLoader());
                        break;
                    case 4:
                        recurrence = (Recurrence) zzb.zza(parcel2, readInt, Recurrence.CREATOR);
                        break;
                    case 5:
                        i = zzb.zzg(parcel2, readInt);
                        break;
                    case 6:
                        metricObjective = (MetricObjective) zzb.zza(parcel2, readInt, MetricObjective.CREATOR);
                        break;
                    case 7:
                        durationObjective = (DurationObjective) zzb.zza(parcel2, readInt, DurationObjective.CREATOR);
                        break;
                    case 8:
                        frequencyObjective = (FrequencyObjective) zzb.zza(parcel2, readInt, FrequencyObjective.CREATOR);
                        break;
                    default:
                        zzb.zzb(parcel2, readInt);
                        break;
                }
            }
            i2 = zzb.zzg(parcel2, readInt);
        }
        zzb.zzF(parcel2, zzd);
        return new Goal(i2, j2, j, arrayList, recurrence, i, metricObjective, durationObjective, frequencyObjective);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new Goal[i];
    }
}
