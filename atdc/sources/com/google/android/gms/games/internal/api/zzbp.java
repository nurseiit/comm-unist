package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.quest.Milestone;
import com.google.android.gms.games.quest.Quest;
import com.google.android.gms.games.quest.Quests.ClaimMilestoneResult;

final class zzbp implements ClaimMilestoneResult {
    private /* synthetic */ Status zzakB;

    zzbp(zzbo zzbo, Status status) {
        this.zzakB = status;
    }

    public final Milestone getMilestone() {
        return null;
    }

    public final Quest getQuest() {
        return null;
    }

    public final Status getStatus() {
        return this.zzakB;
    }
}
