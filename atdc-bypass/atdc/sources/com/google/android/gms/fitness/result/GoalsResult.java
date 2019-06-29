package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.fitness.data.Goal;
import java.util.List;

public class GoalsResult extends zza implements Result {
    public static final Creator<GoalsResult> CREATOR = new zzf();
    private final int versionCode;
    private final List<Goal> zzaXz;
    private final Status zzajl;

    GoalsResult(int i, Status status, List<Goal> list) {
        this.versionCode = i;
        this.zzajl = status;
        this.zzaXz = list;
    }

    public GoalsResult(Status status, List<Goal> list) {
        this(1, status, list);
    }

    public List<Goal> getGoals() {
        return this.zzaXz;
    }

    public Status getStatus() {
        return this.zzajl;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, getStatus(), i, false);
        zzd.zzc(parcel, 2, getGoals(), false);
        zzd.zzc(parcel, 1000, this.versionCode);
        zzd.zzI(parcel, zze);
    }
}
