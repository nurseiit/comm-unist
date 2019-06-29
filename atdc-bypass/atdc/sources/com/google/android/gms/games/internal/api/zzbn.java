package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.quest.Quest;
import com.google.android.gms.games.quest.Quests.AcceptQuestResult;

final class zzbn implements AcceptQuestResult {
    private /* synthetic */ Status zzakB;

    zzbn(zzbm zzbm, Status status) {
        this.zzakB = status;
    }

    public final Quest getQuest() {
        return null;
    }

    public final Status getStatus() {
        return this.zzakB;
    }
}
