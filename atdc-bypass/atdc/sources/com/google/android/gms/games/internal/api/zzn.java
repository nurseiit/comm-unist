package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.achievement.Achievements.UpdateAchievementResult;

final class zzn implements UpdateAchievementResult {
    private /* synthetic */ Status zzakB;
    private /* synthetic */ zzm zzbaR;

    zzn(zzm zzm, Status status) {
        this.zzbaR = zzm;
        this.zzakB = status;
    }

    public final String getAchievementId() {
        return this.zzbaR.zzIi;
    }

    public final Status getStatus() {
        return this.zzakB;
    }
}
