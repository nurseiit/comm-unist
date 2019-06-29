package com.google.android.gms.games.quest;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;

public interface Quests {
    public static final String EXTRA_QUEST = "quest";
    public static final int SELECT_ACCEPTED = 3;
    public static final int[] SELECT_ALL_QUESTS = new int[]{1, 2, 3, 4, 101, 5, 102, 6, 103};
    public static final int SELECT_COMPLETED = 4;
    public static final int SELECT_COMPLETED_UNCLAIMED = 101;
    public static final int SELECT_ENDING_SOON = 102;
    public static final int SELECT_EXPIRED = 5;
    public static final int SELECT_FAILED = 6;
    public static final int SELECT_OPEN = 2;
    public static final int SELECT_RECENTLY_FAILED = 103;
    public static final int SELECT_UPCOMING = 1;
    public static final int SORT_ORDER_ENDING_SOON_FIRST = 1;
    public static final int SORT_ORDER_RECENTLY_UPDATED_FIRST = 0;

    public interface AcceptQuestResult extends Result {
        Quest getQuest();
    }

    public interface ClaimMilestoneResult extends Result {
        Milestone getMilestone();

        Quest getQuest();
    }

    public interface LoadQuestsResult extends Releasable, Result {
        QuestBuffer getQuests();
    }

    PendingResult<AcceptQuestResult> accept(GoogleApiClient googleApiClient, String str);

    PendingResult<ClaimMilestoneResult> claim(GoogleApiClient googleApiClient, String str, String str2);

    Intent getQuestIntent(GoogleApiClient googleApiClient, String str);

    Intent getQuestsIntent(GoogleApiClient googleApiClient, int[] iArr);

    PendingResult<LoadQuestsResult> load(GoogleApiClient googleApiClient, int[] iArr, int i, boolean z);

    PendingResult<LoadQuestsResult> loadByIds(GoogleApiClient googleApiClient, boolean z, String... strArr);

    void registerQuestUpdateListener(GoogleApiClient googleApiClient, QuestUpdateListener questUpdateListener);

    void showStateChangedPopup(GoogleApiClient googleApiClient, String str);

    void unregisterQuestUpdateListener(GoogleApiClient googleApiClient);
}
