package com.google.android.gms.games.quest;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.games.internal.zze;

public final class zzb extends zzc implements Milestone {
    zzb(DataHolder dataHolder, int i) {
        super(dataHolder, i);
    }

    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        return MilestoneEntity.zza(this, obj);
    }

    public final /* synthetic */ Object freeze() {
        return new MilestoneEntity(this);
    }

    public final byte[] getCompletionRewardData() {
        return getByteArray("completion_reward_data");
    }

    public final long getCurrentProgress() {
        long j;
        long j2 = 0;
        switch (getState()) {
            case 2:
                j = getLong("current_value");
                if (getLong("quest_state") != 6) {
                    j -= getLong("initial_value");
                    break;
                }
                break;
            case 3:
            case 4:
                j = getTargetProgress();
                break;
            default:
                j = 0;
                break;
        }
        if (j < 0) {
            zze.zzz("MilestoneRef", "Current progress should never be negative");
        } else {
            j2 = j;
        }
        if (j2 <= getTargetProgress()) {
            return j2;
        }
        zze.zzz("MilestoneRef", "Current progress should never exceed target progress");
        return getTargetProgress();
    }

    public final String getEventId() {
        return getString("external_event_id");
    }

    public final String getMilestoneId() {
        return getString("external_milestone_id");
    }

    public final int getState() {
        return getInteger("milestone_state");
    }

    public final long getTargetProgress() {
        return getLong("target_value");
    }

    public final int hashCode() {
        return MilestoneEntity.zza(this);
    }

    public final String toString() {
        return MilestoneEntity.zzb(this);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        ((MilestoneEntity) ((Milestone) freeze())).writeToParcel(parcel, i);
    }
}
