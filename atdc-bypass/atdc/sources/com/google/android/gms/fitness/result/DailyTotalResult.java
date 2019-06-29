package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.DataSource.Builder;
import com.google.android.gms.fitness.data.DataType;
import java.util.Arrays;

public class DailyTotalResult extends zza implements Result {
    public static final Creator<DailyTotalResult> CREATOR = new zzb();
    private final Status mStatus;
    private final DataSet zzaVi;
    private final int zzaku;

    DailyTotalResult(int i, Status status, DataSet dataSet) {
        this.zzaku = i;
        this.mStatus = status;
        this.zzaVi = dataSet;
    }

    private DailyTotalResult(DataSet dataSet, Status status) {
        this.zzaku = 1;
        this.mStatus = status;
        this.zzaVi = dataSet;
    }

    public static DailyTotalResult zza(Status status, DataType dataType) {
        return new DailyTotalResult(DataSet.create(new Builder().setDataType(dataType).setType(1).build()), status);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DailyTotalResult) {
            DailyTotalResult dailyTotalResult = (DailyTotalResult) obj;
            obj = (this.mStatus.equals(dailyTotalResult.mStatus) && zzbe.equal(this.zzaVi, dailyTotalResult.zzaVi)) ? 1 : null;
            if (obj != null) {
                return true;
            }
        }
        return false;
    }

    public Status getStatus() {
        return this.mStatus;
    }

    @Nullable
    public DataSet getTotal() {
        return this.zzaVi;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.mStatus, this.zzaVi});
    }

    public String toString() {
        return zzbe.zzt(this).zzg("status", this.mStatus).zzg("dataPoint", this.zzaVi).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, getStatus(), i, false);
        zzd.zza(parcel, 2, getTotal(), i, false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, zze);
    }
}
