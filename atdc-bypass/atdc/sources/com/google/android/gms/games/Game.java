package com.google.android.gms.games;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.data.Freezable;

public interface Game extends Parcelable, Freezable<Game> {
    boolean areSnapshotsEnabled();

    int getAchievementTotalCount();

    String getApplicationId();

    String getDescription();

    void getDescription(CharArrayBuffer charArrayBuffer);

    String getDeveloperName();

    void getDeveloperName(CharArrayBuffer charArrayBuffer);

    String getDisplayName();

    void getDisplayName(CharArrayBuffer charArrayBuffer);

    Uri getFeaturedImageUri();

    @KeepName
    @Deprecated
    String getFeaturedImageUrl();

    Uri getHiResImageUri();

    @KeepName
    @Deprecated
    String getHiResImageUrl();

    Uri getIconImageUri();

    @KeepName
    @Deprecated
    String getIconImageUrl();

    int getLeaderboardCount();

    String getPrimaryCategory();

    String getSecondaryCategory();

    String getThemeColor();

    boolean hasGamepadSupport();

    boolean isMuted();

    boolean isRealTimeMultiplayerEnabled();

    boolean isTurnBasedMultiplayerEnabled();

    boolean zzud();

    boolean zzue();

    boolean zzuf();

    String zzug();
}
