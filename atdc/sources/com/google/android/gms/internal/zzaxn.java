package com.google.android.gms.internal;

import com.google.android.gms.cast.games.GameManagerState;
import com.google.android.gms.cast.games.PlayerInfo;
import com.google.android.gms.common.util.zzo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public final class zzaxn implements GameManagerState {
    private final String zzaxA;
    private final Map<String, PlayerInfo> zzaxC;
    private final String zzaxq;
    private final int zzaxr;
    private final int zzaxw;
    private final int zzaxx;
    private final JSONObject zzaxz;

    public zzaxn(int i, int i2, String str, JSONObject jSONObject, Collection<PlayerInfo> collection, String str2, int i3) {
        this.zzaxx = i;
        this.zzaxw = i2;
        this.zzaxA = str;
        this.zzaxz = jSONObject;
        this.zzaxq = str2;
        this.zzaxr = i3;
        this.zzaxC = new HashMap(collection.size());
        for (PlayerInfo playerInfo : collection) {
            this.zzaxC.put(playerInfo.getPlayerId(), playerInfo);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof GameManagerState)) {
            return false;
        }
        GameManagerState gameManagerState = (GameManagerState) obj;
        if (getPlayers().size() != gameManagerState.getPlayers().size()) {
            return false;
        }
        for (PlayerInfo playerInfo : getPlayers()) {
            Object obj2 = null;
            for (PlayerInfo playerInfo2 : gameManagerState.getPlayers()) {
                if (zzaye.zza(playerInfo.getPlayerId(), playerInfo2.getPlayerId())) {
                    if (!zzaye.zza(playerInfo, playerInfo2)) {
                        return false;
                    }
                    obj2 = 1;
                }
            }
            if (obj2 == null) {
                return false;
            }
        }
        return this.zzaxx == gameManagerState.getLobbyState() && this.zzaxw == gameManagerState.getGameplayState() && this.zzaxr == gameManagerState.getMaxPlayers() && zzaye.zza(this.zzaxq, gameManagerState.getApplicationName()) && zzaye.zza(this.zzaxA, gameManagerState.getGameStatusText()) && zzo.zzc(this.zzaxz, gameManagerState.getGameData());
    }

    public final CharSequence getApplicationName() {
        return this.zzaxq;
    }

    public final List<PlayerInfo> getConnectedControllablePlayers() {
        ArrayList arrayList = new ArrayList();
        for (PlayerInfo playerInfo : getPlayers()) {
            if (playerInfo.isConnected() && playerInfo.isControllable()) {
                arrayList.add(playerInfo);
            }
        }
        return arrayList;
    }

    public final List<PlayerInfo> getConnectedPlayers() {
        ArrayList arrayList = new ArrayList();
        for (PlayerInfo playerInfo : getPlayers()) {
            if (playerInfo.isConnected()) {
                arrayList.add(playerInfo);
            }
        }
        return arrayList;
    }

    public final List<PlayerInfo> getControllablePlayers() {
        ArrayList arrayList = new ArrayList();
        for (PlayerInfo playerInfo : getPlayers()) {
            if (playerInfo.isControllable()) {
                arrayList.add(playerInfo);
            }
        }
        return arrayList;
    }

    public final JSONObject getGameData() {
        return this.zzaxz;
    }

    public final CharSequence getGameStatusText() {
        return this.zzaxA;
    }

    public final int getGameplayState() {
        return this.zzaxw;
    }

    public final Collection<String> getListOfChangedPlayers(GameManagerState gameManagerState) {
        HashSet hashSet = new HashSet();
        for (PlayerInfo playerInfo : getPlayers()) {
            PlayerInfo player = gameManagerState.getPlayer(playerInfo.getPlayerId());
            if (player == null || !playerInfo.equals(player)) {
                hashSet.add(playerInfo.getPlayerId());
            }
        }
        for (PlayerInfo playerInfo2 : gameManagerState.getPlayers()) {
            if (getPlayer(playerInfo2.getPlayerId()) == null) {
                hashSet.add(playerInfo2.getPlayerId());
            }
        }
        return hashSet;
    }

    public final int getLobbyState() {
        return this.zzaxx;
    }

    public final int getMaxPlayers() {
        return this.zzaxr;
    }

    public final PlayerInfo getPlayer(String str) {
        return str == null ? null : (PlayerInfo) this.zzaxC.get(str);
    }

    public final Collection<PlayerInfo> getPlayers() {
        return Collections.unmodifiableCollection(this.zzaxC.values());
    }

    public final List<PlayerInfo> getPlayersInState(int i) {
        ArrayList arrayList = new ArrayList();
        for (PlayerInfo playerInfo : getPlayers()) {
            if (playerInfo.getPlayerState() == i) {
                arrayList.add(playerInfo);
            }
        }
        return arrayList;
    }

    public final boolean hasGameDataChanged(GameManagerState gameManagerState) {
        return !zzo.zzc(this.zzaxz, gameManagerState.getGameData());
    }

    public final boolean hasGameStatusTextChanged(GameManagerState gameManagerState) {
        return !zzaye.zza(this.zzaxA, gameManagerState.getGameStatusText());
    }

    public final boolean hasGameplayStateChanged(GameManagerState gameManagerState) {
        return this.zzaxw != gameManagerState.getGameplayState();
    }

    public final boolean hasLobbyStateChanged(GameManagerState gameManagerState) {
        return this.zzaxx != gameManagerState.getLobbyState();
    }

    public final boolean hasPlayerChanged(String str, GameManagerState gameManagerState) {
        return !zzaye.zza(getPlayer(str), gameManagerState.getPlayer(str));
    }

    /* JADX WARNING: Missing block: B:11:0x0023, code skipped:
            return true;
     */
    public final boolean hasPlayerDataChanged(java.lang.String r3, com.google.android.gms.cast.games.GameManagerState r4) {
        /*
        r2 = this;
        r0 = r2.getPlayer(r3);
        r3 = r4.getPlayer(r3);
        r4 = 0;
        if (r0 != 0) goto L_0x000e;
    L_0x000b:
        if (r3 != 0) goto L_0x000e;
    L_0x000d:
        return r4;
    L_0x000e:
        r1 = 1;
        if (r0 == 0) goto L_0x0023;
    L_0x0011:
        if (r3 == 0) goto L_0x0023;
    L_0x0013:
        r0 = r0.getPlayerData();
        r3 = r3.getPlayerData();
        r3 = com.google.android.gms.common.util.zzo.zzc(r0, r3);
        if (r3 != 0) goto L_0x0022;
    L_0x0021:
        return r1;
    L_0x0022:
        return r4;
    L_0x0023:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaxn.hasPlayerDataChanged(java.lang.String, com.google.android.gms.cast.games.GameManagerState):boolean");
    }

    /* JADX WARNING: Missing block: B:11:0x001f, code skipped:
            return true;
     */
    public final boolean hasPlayerStateChanged(java.lang.String r3, com.google.android.gms.cast.games.GameManagerState r4) {
        /*
        r2 = this;
        r0 = r2.getPlayer(r3);
        r3 = r4.getPlayer(r3);
        r4 = 0;
        if (r0 != 0) goto L_0x000e;
    L_0x000b:
        if (r3 != 0) goto L_0x000e;
    L_0x000d:
        return r4;
    L_0x000e:
        r1 = 1;
        if (r0 == 0) goto L_0x001f;
    L_0x0011:
        if (r3 == 0) goto L_0x001f;
    L_0x0013:
        r0 = r0.getPlayerState();
        r3 = r3.getPlayerState();
        if (r0 == r3) goto L_0x001e;
    L_0x001d:
        return r1;
    L_0x001e:
        return r4;
    L_0x001f:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaxn.hasPlayerStateChanged(java.lang.String, com.google.android.gms.cast.games.GameManagerState):boolean");
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zzaxx), Integer.valueOf(this.zzaxw), this.zzaxC, this.zzaxA, this.zzaxz, this.zzaxq, Integer.valueOf(this.zzaxr)});
    }
}
