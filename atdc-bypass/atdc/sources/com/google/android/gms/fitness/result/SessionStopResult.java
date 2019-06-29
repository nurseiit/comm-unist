package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.fitness.data.Session;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class SessionStopResult extends zza implements Result {
    public static final Creator<SessionStopResult> CREATOR = new zzi();
    private final Status mStatus;
    private final List<Session> zzaWs;
    private final int zzaku;

    SessionStopResult(int i, Status status, List<Session> list) {
        this.zzaku = i;
        this.mStatus = status;
        this.zzaWs = Collections.unmodifiableList(list);
    }

    public SessionStopResult(Status status, List<Session> list) {
        this.zzaku = 3;
        this.mStatus = status;
        this.zzaWs = Collections.unmodifiableList(list);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SessionStopResult) {
            SessionStopResult sessionStopResult = (SessionStopResult) obj;
            obj = (this.mStatus.equals(sessionStopResult.mStatus) && zzbe.equal(this.zzaWs, sessionStopResult.zzaWs)) ? 1 : null;
            if (obj != null) {
                return true;
            }
        }
        return false;
    }

    public List<Session> getSessions() {
        return this.zzaWs;
    }

    public Status getStatus() {
        return this.mStatus;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.mStatus, this.zzaWs});
    }

    public String toString() {
        return zzbe.zzt(this).zzg("status", this.mStatus).zzg("sessions", this.zzaWs).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, getStatus(), i, false);
        zzd.zzc(parcel, 3, getSessions(), false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, zze);
    }
}
