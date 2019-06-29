package com.google.android.gms.internal;

import com.google.android.gms.cast.games.GameManagerClient;
import com.google.android.gms.cast.games.GameManagerClient.GameManagerInstanceResult;
import com.google.android.gms.common.api.Status;

final class zzaxj implements GameManagerInstanceResult {
    private final Status mStatus;
    private final GameManagerClient zzaxl;

    zzaxj(Status status, GameManagerClient gameManagerClient) {
        this.mStatus = status;
        this.zzaxl = gameManagerClient;
    }

    public final GameManagerClient getGameManagerClient() {
        return this.zzaxl;
    }

    public final Status getStatus() {
        return this.mStatus;
    }
}
