package com.google.android.gms.games.internal.api;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer.ReliableMessageSentCallback;
import com.google.android.gms.games.multiplayer.realtime.Room;
import com.google.android.gms.games.multiplayer.realtime.RoomConfig;
import com.google.android.gms.games.multiplayer.realtime.RoomUpdateListener;
import com.google.android.gms.internal.zzbdw;
import java.util.List;

public final class zzbs implements RealTimeMultiplayer {
    private static <L> zzbdw<L> zza(GoogleApiClient googleApiClient, L l) {
        return l == null ? null : googleApiClient.zzp(l);
    }

    public final void create(GoogleApiClient googleApiClient, RoomConfig roomConfig) {
        GamesClientImpl zza = Games.zza(googleApiClient, false);
        if (zza != null) {
            zza.zza(googleApiClient.zzp(roomConfig.getRoomUpdateListener()), zza(googleApiClient, roomConfig.getRoomStatusUpdateListener()), zza(googleApiClient, roomConfig.getMessageReceivedListener()), roomConfig);
        }
    }

    public final void declineInvitation(GoogleApiClient googleApiClient, String str) {
        GamesClientImpl zza = Games.zza(googleApiClient, false);
        if (zza != null) {
            zza.zzp(str, 0);
        }
    }

    public final void dismissInvitation(GoogleApiClient googleApiClient, String str) {
        GamesClientImpl zza = Games.zza(googleApiClient, false);
        if (zza != null) {
            zza.zzo(str, 0);
        }
    }

    public final Intent getSelectOpponentsIntent(GoogleApiClient googleApiClient, int i, int i2) {
        return Games.zzf(googleApiClient).zzc(i, i2, true);
    }

    public final Intent getSelectOpponentsIntent(GoogleApiClient googleApiClient, int i, int i2, boolean z) {
        return Games.zzf(googleApiClient).zzc(i, i2, z);
    }

    public final Intent getWaitingRoomIntent(GoogleApiClient googleApiClient, Room room, int i) {
        return Games.zzf(googleApiClient).zza(room, i);
    }

    public final void join(GoogleApiClient googleApiClient, RoomConfig roomConfig) {
        GamesClientImpl zza = Games.zza(googleApiClient, false);
        if (zza != null) {
            zza.zzb(googleApiClient.zzp(roomConfig.getRoomUpdateListener()), zza(googleApiClient, roomConfig.getRoomStatusUpdateListener()), zza(googleApiClient, roomConfig.getMessageReceivedListener()), roomConfig);
        }
    }

    public final void leave(GoogleApiClient googleApiClient, RoomUpdateListener roomUpdateListener, String str) {
        GamesClientImpl zza = Games.zza(googleApiClient, false);
        if (zza != null) {
            zza.zza(googleApiClient.zzp(roomUpdateListener), str);
        }
    }

    public final int sendReliableMessage(GoogleApiClient googleApiClient, ReliableMessageSentCallback reliableMessageSentCallback, byte[] bArr, String str, String str2) {
        return Games.zzf(googleApiClient).zza(zza(googleApiClient, reliableMessageSentCallback), bArr, str, str2);
    }

    public final int sendUnreliableMessage(GoogleApiClient googleApiClient, byte[] bArr, String str, String str2) {
        return Games.zzf(googleApiClient).zza(bArr, str, new String[]{str2});
    }

    public final int sendUnreliableMessage(GoogleApiClient googleApiClient, byte[] bArr, String str, List<String> list) {
        return Games.zzf(googleApiClient).zza(bArr, str, (String[]) list.toArray(new String[list.size()]));
    }

    public final int sendUnreliableMessageToOthers(GoogleApiClient googleApiClient, byte[] bArr, String str) {
        return Games.zzf(googleApiClient).zzc(bArr, str);
    }
}
