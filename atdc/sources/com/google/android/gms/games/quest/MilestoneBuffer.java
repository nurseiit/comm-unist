package com.google.android.gms.games.quest;

import com.google.android.gms.common.data.AbstractDataBuffer;

public final class MilestoneBuffer extends AbstractDataBuffer<Milestone> {
    public final Milestone get(int i) {
        return new zzb(this.zzaCX, i);
    }
}
