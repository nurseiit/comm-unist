package com.google.android.gms.cast.games;

import java.util.Collection;
import java.util.List;
import org.json.JSONObject;

public interface GameManagerState {
    CharSequence getApplicationName();

    List<PlayerInfo> getConnectedControllablePlayers();

    List<PlayerInfo> getConnectedPlayers();

    List<PlayerInfo> getControllablePlayers();

    JSONObject getGameData();

    CharSequence getGameStatusText();

    int getGameplayState();

    Collection<String> getListOfChangedPlayers(GameManagerState gameManagerState);

    int getLobbyState();

    int getMaxPlayers();

    PlayerInfo getPlayer(String str);

    Collection<PlayerInfo> getPlayers();

    List<PlayerInfo> getPlayersInState(int i);

    boolean hasGameDataChanged(GameManagerState gameManagerState);

    boolean hasGameStatusTextChanged(GameManagerState gameManagerState);

    boolean hasGameplayStateChanged(GameManagerState gameManagerState);

    boolean hasLobbyStateChanged(GameManagerState gameManagerState);

    boolean hasPlayerChanged(String str, GameManagerState gameManagerState);

    boolean hasPlayerDataChanged(String str, GameManagerState gameManagerState);

    boolean hasPlayerStateChanged(String str, GameManagerState gameManagerState);
}
