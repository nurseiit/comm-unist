package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.internal.zzbxa;
import com.google.android.gms.internal.zzbxb;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class SessionReadRequest extends zza {
    public static final Creator<SessionReadRequest> CREATOR = new zzav();
    private final String mSessionId;
    private final List<DataType> zzaTn;
    private final long zzaTo;
    private final boolean zzaWC;
    private final List<DataSource> zzaWr;
    private final String zzaXj;
    private boolean zzaXk;
    private final List<String> zzaXl;
    private final zzbxa zzaXm;
    private final long zzagZ;
    private final int zzaku;

    public static class Builder {
        private String mSessionId;
        private List<DataType> zzaTn = new ArrayList();
        private long zzaTo = 0;
        private boolean zzaWC = false;
        private List<DataSource> zzaWr = new ArrayList();
        private String zzaXj;
        private boolean zzaXk = false;
        private List<String> zzaXl = new ArrayList();
        private long zzagZ = 0;

        public SessionReadRequest build() {
            zzbo.zzb(this.zzagZ > 0, "Invalid start time: %s", Long.valueOf(this.zzagZ));
            boolean z = this.zzaTo > 0 && this.zzaTo > this.zzagZ;
            zzbo.zzb(z, "Invalid end time: %s", Long.valueOf(this.zzaTo));
            return new SessionReadRequest(this, null);
        }

        public Builder enableServerQueries() {
            this.zzaWC = true;
            return this;
        }

        public Builder excludePackage(String str) {
            zzbo.zzb((Object) str, (Object) "Attempting to use a null package name");
            if (!this.zzaXl.contains(str)) {
                this.zzaXl.add(str);
            }
            return this;
        }

        public Builder read(DataSource dataSource) {
            zzbo.zzb((Object) dataSource, (Object) "Attempting to add a null data source");
            if (!this.zzaWr.contains(dataSource)) {
                this.zzaWr.add(dataSource);
            }
            return this;
        }

        public Builder read(DataType dataType) {
            zzbo.zzb((Object) dataType, (Object) "Attempting to use a null data type");
            if (!this.zzaTn.contains(dataType)) {
                this.zzaTn.add(dataType);
            }
            return this;
        }

        public Builder readSessionsFromAllApps() {
            this.zzaXk = true;
            return this;
        }

        public Builder setSessionId(String str) {
            this.mSessionId = str;
            return this;
        }

        public Builder setSessionName(String str) {
            this.zzaXj = str;
            return this;
        }

        public Builder setTimeInterval(long j, long j2, TimeUnit timeUnit) {
            this.zzagZ = timeUnit.toMillis(j);
            this.zzaTo = timeUnit.toMillis(j2);
            return this;
        }
    }

    SessionReadRequest(int i, String str, String str2, long j, long j2, List<DataType> list, List<DataSource> list2, boolean z, boolean z2, List<String> list3, IBinder iBinder) {
        this.zzaku = i;
        this.zzaXj = str;
        this.mSessionId = str2;
        this.zzagZ = j;
        this.zzaTo = j2;
        this.zzaTn = list;
        this.zzaWr = list2;
        this.zzaXk = z;
        this.zzaWC = z2;
        this.zzaXl = list3;
        this.zzaXm = zzbxb.zzU(iBinder);
    }

    private SessionReadRequest(Builder builder) {
        this(builder.zzaXj, builder.mSessionId, builder.zzagZ, builder.zzaTo, builder.zzaTn, builder.zzaWr, builder.zzaXk, builder.zzaWC, builder.zzaXl, null);
    }

    public SessionReadRequest(SessionReadRequest sessionReadRequest, zzbxa zzbxa) {
        this(sessionReadRequest.zzaXj, sessionReadRequest.mSessionId, sessionReadRequest.zzagZ, sessionReadRequest.zzaTo, sessionReadRequest.zzaTn, sessionReadRequest.zzaWr, sessionReadRequest.zzaXk, sessionReadRequest.zzaWC, sessionReadRequest.zzaXl, zzbxa);
    }

    private SessionReadRequest(String str, String str2, long j, long j2, List<DataType> list, List<DataSource> list2, boolean z, boolean z2, List<String> list3, zzbxa zzbxa) {
        this(5, str, str2, j, j2, list, list2, z, z2, list3, zzbxa == null ? null : zzbxa.asBinder());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SessionReadRequest) {
            SessionReadRequest sessionReadRequest = (SessionReadRequest) obj;
            obj = (zzbe.equal(this.zzaXj, sessionReadRequest.zzaXj) && this.mSessionId.equals(sessionReadRequest.mSessionId) && this.zzagZ == sessionReadRequest.zzagZ && this.zzaTo == sessionReadRequest.zzaTo && zzbe.equal(this.zzaTn, sessionReadRequest.zzaTn) && zzbe.equal(this.zzaWr, sessionReadRequest.zzaWr) && this.zzaXk == sessionReadRequest.zzaXk && this.zzaXl.equals(sessionReadRequest.zzaXl) && this.zzaWC == sessionReadRequest.zzaWC) ? 1 : null;
            if (obj != null) {
                return true;
            }
        }
        return false;
    }

    public List<DataSource> getDataSources() {
        return this.zzaWr;
    }

    public List<DataType> getDataTypes() {
        return this.zzaTn;
    }

    public long getEndTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.zzaTo, TimeUnit.MILLISECONDS);
    }

    public List<String> getExcludedPackages() {
        return this.zzaXl;
    }

    public String getSessionId() {
        return this.mSessionId;
    }

    public String getSessionName() {
        return this.zzaXj;
    }

    public long getStartTime(TimeUnit timeUnit) {
        return timeUnit.convert(this.zzagZ, TimeUnit.MILLISECONDS);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzaXj, this.mSessionId, Long.valueOf(this.zzagZ), Long.valueOf(this.zzaTo)});
    }

    public boolean includeSessionsFromAllApps() {
        return this.zzaXk;
    }

    public String toString() {
        return zzbe.zzt(this).zzg("sessionName", this.zzaXj).zzg("sessionId", this.mSessionId).zzg("startTimeMillis", Long.valueOf(this.zzagZ)).zzg("endTimeMillis", Long.valueOf(this.zzaTo)).zzg("dataTypes", this.zzaTn).zzg("dataSources", this.zzaWr).zzg("sessionsFromAllApps", Boolean.valueOf(this.zzaXk)).zzg("excludedPackages", this.zzaXl).zzg("useServer", Boolean.valueOf(this.zzaWC)).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, getSessionName(), false);
        zzd.zza(parcel, 2, getSessionId(), false);
        zzd.zza(parcel, 3, this.zzagZ);
        zzd.zza(parcel, 4, this.zzaTo);
        zzd.zzc(parcel, 5, getDataTypes(), false);
        zzd.zzc(parcel, 6, getDataSources(), false);
        zzd.zza(parcel, 7, this.zzaXk);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zza(parcel, 8, this.zzaWC);
        zzd.zzb(parcel, 9, getExcludedPackages(), false);
        zzd.zza(parcel, 10, this.zzaXm == null ? null : this.zzaXm.asBinder(), false);
        zzd.zzI(parcel, i);
    }
}
