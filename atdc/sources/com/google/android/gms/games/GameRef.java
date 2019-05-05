package com.google.android.gms.games;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.gun0912.tedpermission.TedPermissionActivity;

public final class GameRef extends zzc implements Game {
    public GameRef(DataHolder dataHolder, int i) {
        super(dataHolder, i);
    }

    public final boolean areSnapshotsEnabled() {
        return getInteger("snapshots_enabled") > 0;
    }

    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        return GameEntity.zza(this, obj);
    }

    public final /* synthetic */ Object freeze() {
        return new GameEntity(this);
    }

    public final int getAchievementTotalCount() {
        return getInteger("achievement_total_count");
    }

    public final String getApplicationId() {
        return getString("external_game_id");
    }

    public final String getDescription() {
        return getString("game_description");
    }

    public final void getDescription(CharArrayBuffer charArrayBuffer) {
        zza("game_description", charArrayBuffer);
    }

    public final String getDeveloperName() {
        return getString("developer_name");
    }

    public final void getDeveloperName(CharArrayBuffer charArrayBuffer) {
        zza("developer_name", charArrayBuffer);
    }

    public final String getDisplayName() {
        return getString("display_name");
    }

    public final void getDisplayName(CharArrayBuffer charArrayBuffer) {
        zza("display_name", charArrayBuffer);
    }

    public final Uri getFeaturedImageUri() {
        return zzcw("featured_image_uri");
    }

    public final String getFeaturedImageUrl() {
        return getString("featured_image_url");
    }

    public final Uri getHiResImageUri() {
        return zzcw("game_hi_res_image_uri");
    }

    public final String getHiResImageUrl() {
        return getString("game_hi_res_image_url");
    }

    public final Uri getIconImageUri() {
        return zzcw("game_icon_image_uri");
    }

    public final String getIconImageUrl() {
        return getString("game_icon_image_url");
    }

    public final int getLeaderboardCount() {
        return getInteger("leaderboard_count");
    }

    public final String getPrimaryCategory() {
        return getString("primary_category");
    }

    public final String getSecondaryCategory() {
        return getString("secondary_category");
    }

    public final String getThemeColor() {
        return getString("theme_color");
    }

    public final boolean hasGamepadSupport() {
        return getInteger("gamepad_support") > 0;
    }

    public final int hashCode() {
        return GameEntity.zza(this);
    }

    public final boolean isMuted() {
        return getBoolean("muted");
    }

    public final boolean isRealTimeMultiplayerEnabled() {
        return getInteger("real_time_support") > 0;
    }

    public final boolean isTurnBasedMultiplayerEnabled() {
        return getInteger("turn_based_support") > 0;
    }

    public final String toString() {
        return GameEntity.zzb(this);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        ((GameEntity) ((Game) freeze())).writeToParcel(parcel, i);
    }

    public final boolean zzud() {
        return getBoolean("play_enabled_game");
    }

    public final boolean zzue() {
        return getBoolean("identity_sharing_confirmed");
    }

    public final boolean zzuf() {
        return getInteger("installed") > 0;
    }

    public final String zzug() {
        return getString(TedPermissionActivity.EXTRA_PACKAGE_NAME);
    }
}
