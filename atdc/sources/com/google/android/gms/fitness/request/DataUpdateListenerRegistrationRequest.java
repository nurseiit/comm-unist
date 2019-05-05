package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.internal.zzbxg;
import com.google.android.gms.internal.zzbxh;
import java.util.Arrays;

public class DataUpdateListenerRegistrationRequest extends zza {
    public static final Creator<DataUpdateListenerRegistrationRequest> CREATOR = new zzu();
    private final PendingIntent mPendingIntent;
    private DataSource zzaUd;
    private DataType zzaUe;
    private final zzbxg zzaWo;
    private final int zzaku;

    public static class Builder {
        private PendingIntent mPendingIntent;
        private DataSource zzaUd;
        private DataType zzaUe;

        public DataUpdateListenerRegistrationRequest build() {
            boolean z = (this.zzaUd == null && this.zzaUe == null) ? false : true;
            zzbo.zza(z, (Object) "Set either dataSource or dataTYpe");
            zzbo.zzb(this.mPendingIntent, (Object) "pendingIntent must be set");
            return new DataUpdateListenerRegistrationRequest(this, null);
        }

        public Builder setDataSource(DataSource dataSource) throws NullPointerException {
            zzbo.zzu(dataSource);
            this.zzaUd = dataSource;
            return this;
        }

        public Builder setDataType(DataType dataType) {
            zzbo.zzu(dataType);
            this.zzaUe = dataType;
            return this;
        }

        public Builder setPendingIntent(PendingIntent pendingIntent) {
            zzbo.zzu(pendingIntent);
            this.mPendingIntent = pendingIntent;
            return this;
        }
    }

    DataUpdateListenerRegistrationRequest(int i, DataSource dataSource, DataType dataType, PendingIntent pendingIntent, IBinder iBinder) {
        this.zzaku = i;
        this.zzaUd = dataSource;
        this.zzaUe = dataType;
        this.mPendingIntent = pendingIntent;
        this.zzaWo = zzbxh.zzW(iBinder);
    }

    private DataUpdateListenerRegistrationRequest(DataSource dataSource, DataType dataType, PendingIntent pendingIntent, IBinder iBinder) {
        this.zzaku = 1;
        this.zzaUd = dataSource;
        this.zzaUe = dataType;
        this.mPendingIntent = pendingIntent;
        this.zzaWo = zzbxh.zzW(iBinder);
    }

    private DataUpdateListenerRegistrationRequest(Builder builder) {
        this(builder.zzaUd, builder.zzaUe, builder.mPendingIntent, null);
    }

    public DataUpdateListenerRegistrationRequest(DataUpdateListenerRegistrationRequest dataUpdateListenerRegistrationRequest, IBinder iBinder) {
        this(dataUpdateListenerRegistrationRequest.zzaUd, dataUpdateListenerRegistrationRequest.zzaUe, dataUpdateListenerRegistrationRequest.mPendingIntent, iBinder);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DataUpdateListenerRegistrationRequest) {
            DataUpdateListenerRegistrationRequest dataUpdateListenerRegistrationRequest = (DataUpdateListenerRegistrationRequest) obj;
            obj = (zzbe.equal(this.zzaUd, dataUpdateListenerRegistrationRequest.zzaUd) && zzbe.equal(this.zzaUe, dataUpdateListenerRegistrationRequest.zzaUe) && zzbe.equal(this.mPendingIntent, dataUpdateListenerRegistrationRequest.mPendingIntent)) ? 1 : null;
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

    public PendingIntent getIntent() {
        return this.mPendingIntent;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzaUd, this.zzaUe, this.mPendingIntent});
    }

    public String toString() {
        return zzbe.zzt(this).zzg("dataSource", this.zzaUd).zzg("dataType", this.zzaUe).zzg("pendingIntent", this.mPendingIntent).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, getDataSource(), i, false);
        zzd.zza(parcel, 2, getDataType(), i, false);
        zzd.zza(parcel, 3, getIntent(), i, false);
        zzd.zza(parcel, 4, this.zzaWo == null ? null : this.zzaWo.asBinder(), false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, zze);
    }
}
