package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbo;
import java.util.Arrays;

public class Subscription extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Creator<Subscription> CREATOR = new zzah();
    private final DataSource zzaUd;
    private final DataType zzaUe;
    private final long zzaVj;
    private final int zzaVk;
    private final int zzaku;

    public static class zza {
        private DataSource zzaUd;
        private DataType zzaUe;
        private long zzaVj = -1;
        private int zzaVk = 2;

        public final zza zza(DataSource dataSource) {
            this.zzaUd = dataSource;
            return this;
        }

        public final zza zza(DataType dataType) {
            this.zzaUe = dataType;
            return this;
        }

        public final Subscription zztQ() {
            boolean z = true;
            boolean z2 = (this.zzaUd == null && this.zzaUe == null) ? false : true;
            zzbo.zza(z2, (Object) "Must call setDataSource() or setDataType()");
            if (!(this.zzaUe == null || this.zzaUd == null || this.zzaUe.equals(this.zzaUd.getDataType()))) {
                z = false;
            }
            zzbo.zza(z, (Object) "Specified data type is incompatible with specified data source");
            return new Subscription(this);
        }
    }

    Subscription(int i, DataSource dataSource, DataType dataType, long j, int i2) {
        this.zzaku = i;
        this.zzaUd = dataSource;
        this.zzaUe = dataType;
        this.zzaVj = j;
        this.zzaVk = i2;
    }

    private Subscription(zza zza) {
        this.zzaku = 1;
        this.zzaUe = zza.zzaUe;
        this.zzaUd = zza.zzaUd;
        this.zzaVj = zza.zzaVj;
        this.zzaVk = zza.zzaVk;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Subscription) {
            Subscription subscription = (Subscription) obj;
            obj = (zzbe.equal(this.zzaUd, subscription.zzaUd) && zzbe.equal(this.zzaUe, subscription.zzaUe) && this.zzaVj == subscription.zzaVj && this.zzaVk == subscription.zzaVk) ? 1 : null;
            if (obj != null) {
                return true;
            }
        }
        return false;
    }

    public DataSource getDataSource() {
        return this.zzaUd;
    }

    public DataType getDataType() {
        return this.zzaUe;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzaUd, this.zzaUd, Long.valueOf(this.zzaVj), Integer.valueOf(this.zzaVk)});
    }

    public String toDebugString() {
        String str = "Subscription{%s}";
        Object[] objArr = new Object[1];
        objArr[0] = this.zzaUd == null ? this.zzaUe.getName() : this.zzaUd.toDebugString();
        return String.format(str, objArr);
    }

    public String toString() {
        return zzbe.zzt(this).zzg("dataSource", this.zzaUd).zzg("dataType", this.zzaUe).zzg("samplingIntervalMicros", Long.valueOf(this.zzaVj)).zzg("accuracyMode", Integer.valueOf(this.zzaVk)).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, getDataSource(), i, false);
        zzd.zza(parcel, 2, getDataType(), i, false);
        zzd.zza(parcel, 3, this.zzaVj);
        zzd.zzc(parcel, 4, this.zzaVk);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, zze);
    }

    public final DataType zztP() {
        return this.zzaUe == null ? this.zzaUd.getDataType() : this.zzaUe;
    }
}
