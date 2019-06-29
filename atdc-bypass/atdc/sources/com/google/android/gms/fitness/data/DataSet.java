package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.Log;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzbuj;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class DataSet extends zza implements ReflectedParcelable {
    public static final Creator<DataSet> CREATOR = new zzi();
    private final int versionCode;
    private final DataType zzaSZ;
    private final List<DataPoint> zzaTB;
    private final List<DataSource> zzaTC;
    private boolean zzaTD;
    private final DataSource zzaTa;

    DataSet(int i, DataSource dataSource, DataType dataType, List<RawDataPoint> list, List<DataSource> list2, boolean z) {
        List list22;
        this.zzaTD = false;
        this.versionCode = i;
        this.zzaTa = dataSource;
        this.zzaSZ = dataSource.getDataType();
        this.zzaTD = z;
        this.zzaTB = new ArrayList(list.size());
        if (i < 2) {
            list22 = Collections.singletonList(dataSource);
        }
        this.zzaTC = list22;
        for (RawDataPoint dataPoint : list) {
            this.zzaTB.add(new DataPoint(this.zzaTC, dataPoint));
        }
    }

    private DataSet(DataSource dataSource) {
        this.zzaTD = false;
        this.versionCode = 3;
        this.zzaTa = (DataSource) zzbo.zzu(dataSource);
        this.zzaSZ = dataSource.getDataType();
        this.zzaTB = new ArrayList();
        this.zzaTC = new ArrayList();
        this.zzaTC.add(this.zzaTa);
    }

    public DataSet(RawDataSet rawDataSet, List<DataSource> list) {
        this.zzaTD = false;
        this.versionCode = 3;
        int i = rawDataSet.zzaUZ;
        Object obj = (i < 0 || i >= list.size()) ? null : list.get(i);
        this.zzaTa = (DataSource) obj;
        this.zzaSZ = this.zzaTa.getDataType();
        this.zzaTC = list;
        this.zzaTD = rawDataSet.zzaTs;
        List<RawDataPoint> list2 = rawDataSet.zzaVe;
        this.zzaTB = new ArrayList(list2.size());
        for (RawDataPoint dataPoint : list2) {
            this.zzaTB.add(new DataPoint(this.zzaTC, dataPoint));
        }
    }

    public static DataSet create(DataSource dataSource) {
        zzbo.zzb((Object) dataSource, (Object) "DataSource should be specified");
        return new DataSet(dataSource);
    }

    private final void zza(DataPoint dataPoint) {
        this.zzaTB.add(dataPoint);
        DataSource originalDataSource = dataPoint.getOriginalDataSource();
        if (originalDataSource != null && !this.zzaTC.contains(originalDataSource)) {
            this.zzaTC.add(originalDataSource);
        }
    }

    public static void zzb(DataPoint dataPoint) throws IllegalArgumentException {
        String zza = zzbuj.zza(dataPoint, zzf.zzaTt);
        if (zza != null) {
            String valueOf = String.valueOf(dataPoint);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 20);
            stringBuilder.append("Invalid data point: ");
            stringBuilder.append(valueOf);
            Log.w("Fitness", stringBuilder.toString());
            throw new IllegalArgumentException(zza);
        }
    }

    private List<RawDataPoint> zztL() {
        return zzA(this.zzaTC);
    }

    public final void add(DataPoint dataPoint) {
        Object[] objArr = new Object[]{dataPoint.getDataSource(), this.zzaTa};
        zzbo.zzb(dataPoint.getDataSource().getStreamIdentifier().equals(this.zzaTa.getStreamIdentifier()), "Conflicting data sources found %s vs %s", objArr);
        dataPoint.zztK();
        zzb(dataPoint);
        zza(dataPoint);
    }

    public final void addAll(Iterable<DataPoint> iterable) {
        for (DataPoint add : iterable) {
            add(add);
        }
    }

    public final DataPoint createDataPoint() {
        return DataPoint.create(this.zzaTa);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof DataSet) {
            DataSet dataSet = (DataSet) obj;
            obj = (zzbe.equal(getDataType(), dataSet.getDataType()) && zzbe.equal(this.zzaTa, dataSet.zzaTa) && zzbe.equal(this.zzaTB, dataSet.zzaTB) && this.zzaTD == dataSet.zzaTD) ? 1 : null;
            if (obj != null) {
                return true;
            }
        }
        return false;
    }

    public final List<DataPoint> getDataPoints() {
        return Collections.unmodifiableList(this.zzaTB);
    }

    public final DataSource getDataSource() {
        return this.zzaTa;
    }

    public final DataType getDataType() {
        return this.zzaTa.getDataType();
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzaTa});
    }

    public final boolean isEmpty() {
        return this.zzaTB.isEmpty();
    }

    public final String toString() {
        List zztL = zztL();
        String str = "DataSet{%s %s}";
        Object[] objArr = new Object[2];
        objArr[0] = this.zzaTa.toDebugString();
        if (this.zzaTB.size() >= 10) {
            zztL = String.format("%d data points, first 5: %s", new Object[]{Integer.valueOf(this.zzaTB.size()), zztL.subList(0, 5)});
        }
        objArr[1] = zztL;
        return String.format(str, objArr);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, getDataSource(), i, false);
        zzd.zza(parcel, 2, getDataType(), i, false);
        zzd.zzd(parcel, 3, zztL(), false);
        zzd.zzc(parcel, 4, this.zzaTC, false);
        zzd.zza(parcel, 5, this.zzaTD);
        zzd.zzc(parcel, 1000, this.versionCode);
        zzd.zzI(parcel, zze);
    }

    /* Access modifiers changed, original: final */
    public final List<RawDataPoint> zzA(List<DataSource> list) {
        ArrayList arrayList = new ArrayList(this.zzaTB.size());
        for (DataPoint rawDataPoint : this.zzaTB) {
            arrayList.add(new RawDataPoint(rawDataPoint, list));
        }
        return arrayList;
    }

    public final void zzb(Iterable<DataPoint> iterable) {
        for (DataPoint zza : iterable) {
            zza(zza);
        }
    }

    public final boolean zztE() {
        return this.zzaTD;
    }
}
