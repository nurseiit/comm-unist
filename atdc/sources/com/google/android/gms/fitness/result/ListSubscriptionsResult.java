package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.Subscription;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class ListSubscriptionsResult extends zza implements Result {
    public static final Creator<ListSubscriptionsResult> CREATOR = new zzg();
    private final Status mStatus;
    private final List<Subscription> zzaXA;
    private final int zzaku;

    ListSubscriptionsResult(int i, List<Subscription> list, Status status) {
        this.zzaku = i;
        this.zzaXA = list;
        this.mStatus = status;
    }

    private ListSubscriptionsResult(List<Subscription> list, Status status) {
        this.zzaku = 3;
        this.zzaXA = Collections.unmodifiableList(list);
        this.mStatus = (Status) zzbo.zzb((Object) status, (Object) "status");
    }

    public static ListSubscriptionsResult zzD(Status status) {
        return new ListSubscriptionsResult(Collections.emptyList(), status);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ListSubscriptionsResult) {
            ListSubscriptionsResult listSubscriptionsResult = (ListSubscriptionsResult) obj;
            obj = (this.mStatus.equals(listSubscriptionsResult.mStatus) && zzbe.equal(this.zzaXA, listSubscriptionsResult.zzaXA)) ? 1 : null;
            if (obj != null) {
                return true;
            }
        }
        return false;
    }

    public Status getStatus() {
        return this.mStatus;
    }

    public List<Subscription> getSubscriptions() {
        return this.zzaXA;
    }

    public List<Subscription> getSubscriptions(DataType dataType) {
        ArrayList arrayList = new ArrayList();
        for (Subscription subscription : this.zzaXA) {
            if (dataType.equals(subscription.zztP())) {
                arrayList.add(subscription);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.mStatus, this.zzaXA});
    }

    public String toString() {
        return zzbe.zzt(this).zzg("status", this.mStatus).zzg("subscriptions", this.zzaXA).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zzc(parcel, 1, getSubscriptions(), false);
        zzd.zza(parcel, 2, getStatus(), i, false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, zze);
    }
}
