package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.Session;
import com.google.android.gms.fitness.data.zzae;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class SessionReadResult extends zza implements Result {
    public static final Creator<SessionReadResult> CREATOR = new zzh();
    private final Status mStatus;
    private final List<Session> zzaWs;
    private final List<zzae> zzaXB;
    private final int zzaku;

    SessionReadResult(int i, List<Session> list, List<zzae> list2, Status status) {
        this.zzaku = i;
        this.zzaWs = list;
        this.zzaXB = Collections.unmodifiableList(list2);
        this.mStatus = status;
    }

    private SessionReadResult(List<Session> list, List<zzae> list2, Status status) {
        this.zzaku = 3;
        this.zzaWs = list;
        this.zzaXB = Collections.unmodifiableList(list2);
        this.mStatus = status;
    }

    public static SessionReadResult zzE(Status status) {
        return new SessionReadResult(new ArrayList(), new ArrayList(), status);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SessionReadResult) {
            SessionReadResult sessionReadResult = (SessionReadResult) obj;
            obj = (this.mStatus.equals(sessionReadResult.mStatus) && zzbe.equal(this.zzaWs, sessionReadResult.zzaWs) && zzbe.equal(this.zzaXB, sessionReadResult.zzaXB)) ? 1 : null;
            if (obj != null) {
                return true;
            }
        }
        return false;
    }

    public List<DataSet> getDataSet(Session session) {
        zzbo.zzb(this.zzaWs.contains(session), "Attempting to read data for session %s which was not returned", session);
        ArrayList arrayList = new ArrayList();
        for (zzae zzae : this.zzaXB) {
            if (zzbe.equal(session, zzae.getSession())) {
                arrayList.add(zzae.getDataSet());
            }
        }
        return arrayList;
    }

    public List<DataSet> getDataSet(Session session, DataType dataType) {
        zzbo.zzb(this.zzaWs.contains(session), "Attempting to read data for session %s which was not returned", session);
        ArrayList arrayList = new ArrayList();
        for (zzae zzae : this.zzaXB) {
            if (zzbe.equal(session, zzae.getSession()) && dataType.equals(zzae.getDataSet().getDataType())) {
                arrayList.add(zzae.getDataSet());
            }
        }
        return arrayList;
    }

    public List<Session> getSessions() {
        return this.zzaWs;
    }

    public Status getStatus() {
        return this.mStatus;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.mStatus, this.zzaWs, this.zzaXB});
    }

    public String toString() {
        return zzbe.zzt(this).zzg("status", this.mStatus).zzg("sessions", this.zzaWs).zzg("sessionDataSets", this.zzaXB).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zzc(parcel, 1, getSessions(), false);
        zzd.zzc(parcel, 2, this.zzaXB, false);
        zzd.zza(parcel, 3, getStatus(), i, false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, zze);
    }
}
