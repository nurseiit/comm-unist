package com.google.android.gms.internal;

import com.google.android.gms.cast.games.GameManagerClient.GameManagerResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

public abstract class zzaxe extends zzaxg<GameManagerResult> {
    final /* synthetic */ zzawy zzaxd;

    public zzaxe(zzawy zzawy) {
        this.zzaxd = zzawy;
        super(zzawy);
        this.zzarw = new zzaxf(this, zzawy);
    }

    public static GameManagerResult zzj(Status status) {
        return new zzaxk(status, null, -1, null);
    }

    public final /* synthetic */ Result zzb(Status status) {
        return zzj(status);
    }
}
