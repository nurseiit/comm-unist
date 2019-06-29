package com.google.android.gms.internal;

import com.google.android.gms.cast.games.GameManagerClient;
import com.google.android.gms.cast.games.GameManagerClient.GameManagerInstanceResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

public abstract class zzaxh extends zzaxg<GameManagerInstanceResult> {
    final /* synthetic */ zzawy zzaxd;
    private GameManagerClient zzaxl;

    public zzaxh(zzawy zzawy, GameManagerClient gameManagerClient) {
        this.zzaxd = zzawy;
        super(zzawy);
        this.zzaxl = gameManagerClient;
        this.zzarw = new zzaxi(this, zzawy);
    }

    public static GameManagerInstanceResult zzk(Status status) {
        return new zzaxj(status, null);
    }

    public final /* synthetic */ Result zzb(Status status) {
        return zzk(status);
    }
}
