package com.google.android.gms.games.stats;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.data.Freezable;

public interface PlayerStats extends Parcelable, Freezable<PlayerStats> {
    public static final float UNSET_VALUE = -1.0f;

    float getAverageSessionLength();

    float getChurnProbability();

    int getDaysSinceLastPlayed();

    float getHighSpenderProbability();

    int getNumberOfPurchases();

    int getNumberOfSessions();

    float getSessionPercentile();

    float getSpendPercentile();

    float getSpendProbability();

    float getTotalSpendNext28Days();

    Bundle zzvw();
}
