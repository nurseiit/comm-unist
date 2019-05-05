package com.google.android.gms.games.achievement;

import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataHolder;

public final class AchievementBuffer extends AbstractDataBuffer<Achievement> {
    public AchievementBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    public final Achievement get(int i) {
        return new AchievementRef(this.zzaCX, i);
    }
}
