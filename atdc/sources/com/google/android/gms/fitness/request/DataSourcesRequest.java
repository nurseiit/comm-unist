package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbg;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zzb;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.internal.zzbvy;
import com.google.android.gms.internal.zzbvz;
import java.util.Arrays;
import java.util.List;

public class DataSourcesRequest extends zza {
    public static final Creator<DataSourcesRequest> CREATOR = new zzo();
    private final List<DataType> zzaTn;
    private final List<Integer> zzaWG;
    private final boolean zzaWH;
    private final zzbvy zzaWI;
    private final int zzaku;

    public static class Builder {
        private boolean zzaWH = false;
        private DataType[] zzaWJ = new DataType[0];
        private int[] zzaWK = new int[]{0, 1};

        public DataSourcesRequest build() {
            boolean z = false;
            zzbo.zza(this.zzaWJ.length > 0, (Object) "Must add at least one data type");
            if (this.zzaWK.length > 0) {
                z = true;
            }
            zzbo.zza(z, (Object) "Must add at least one data source type");
            return new DataSourcesRequest(this, null);
        }

        public Builder setDataSourceTypes(int... iArr) {
            this.zzaWK = iArr;
            return this;
        }

        public Builder setDataTypes(DataType... dataTypeArr) {
            this.zzaWJ = dataTypeArr;
            return this;
        }
    }

    DataSourcesRequest(int i, List<DataType> list, List<Integer> list2, boolean z, IBinder iBinder) {
        this.zzaku = i;
        this.zzaTn = list;
        this.zzaWG = list2;
        this.zzaWH = z;
        this.zzaWI = zzbvz.zzQ(iBinder);
    }

    private DataSourcesRequest(Builder builder) {
        this(zzb.zza(builder.zzaWJ), Arrays.asList(zzb.zza(builder.zzaWK)), false, null);
    }

    public DataSourcesRequest(DataSourcesRequest dataSourcesRequest, zzbvy zzbvy) {
        this(dataSourcesRequest.zzaTn, dataSourcesRequest.zzaWG, dataSourcesRequest.zzaWH, zzbvy);
    }

    private DataSourcesRequest(List<DataType> list, List<Integer> list2, boolean z, zzbvy zzbvy) {
        this.zzaku = 4;
        this.zzaTn = list;
        this.zzaWG = list2;
        this.zzaWH = z;
        this.zzaWI = zzbvy;
    }

    public List<DataType> getDataTypes() {
        return this.zzaTn;
    }

    public String toString() {
        zzbg zzg = zzbe.zzt(this).zzg("dataTypes", this.zzaTn).zzg("sourceTypes", this.zzaWG);
        if (this.zzaWH) {
            zzg.zzg("includeDbOnlySources", "true");
        }
        return zzg.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, getDataTypes(), false);
        zzd.zza(parcel, 2, this.zzaWG, false);
        zzd.zza(parcel, 3, this.zzaWH);
        zzd.zza(parcel, 4, this.zzaWI == null ? null : this.zzaWI.asBinder(), false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, i);
    }
}
