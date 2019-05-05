package com.google.android.gms.games.multiplayer.realtime;

import android.os.Bundle;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.games.multiplayer.realtime.RoomConfig.Builder;

public final class zzd extends RoomConfig {
    private final String zzajX;
    private final RoomUpdateListener zzbdG;
    private final RoomStatusUpdateListener zzbdH;
    private final RealTimeMessageReceivedListener zzbdI;
    private final Bundle zzbdL;
    private final String[] zzbdM;
    private final int zzbdu;

    zzd(Builder builder) {
        this.zzbdG = builder.zzbdG;
        this.zzbdH = builder.zzbdH;
        this.zzbdI = builder.zzbdI;
        this.zzajX = builder.zzbdJ;
        this.zzbdu = builder.zzbdu;
        this.zzbdL = builder.zzbdL;
        this.zzbdM = (String[]) builder.zzbdK.toArray(new String[builder.zzbdK.size()]);
        zzbo.zzb(this.zzbdI, (Object) "Must specify a message listener");
    }

    public final Bundle getAutoMatchCriteria() {
        return this.zzbdL;
    }

    public final String getInvitationId() {
        return this.zzajX;
    }

    public final String[] getInvitedPlayerIds() {
        return this.zzbdM;
    }

    public final RealTimeMessageReceivedListener getMessageReceivedListener() {
        return this.zzbdI;
    }

    public final RoomStatusUpdateListener getRoomStatusUpdateListener() {
        return this.zzbdH;
    }

    public final RoomUpdateListener getRoomUpdateListener() {
        return this.zzbdG;
    }

    public final int getVariant() {
        return this.zzbdu;
    }
}
