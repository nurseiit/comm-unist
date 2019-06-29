package com.google.android.gms.games.quest;

import android.os.Parcelable;
import com.google.android.gms.common.data.Freezable;

public interface Milestone extends Parcelable, Freezable<Milestone> {
    public static final int STATE_CLAIMED = 4;
    public static final int STATE_COMPLETED_NOT_CLAIMED = 3;
    public static final int STATE_NOT_COMPLETED = 2;
    public static final int STATE_NOT_STARTED = 1;

    byte[] getCompletionRewardData();

    long getCurrentProgress();

    String getEventId();

    String getMilestoneId();

    int getState();

    long getTargetProgress();
}
