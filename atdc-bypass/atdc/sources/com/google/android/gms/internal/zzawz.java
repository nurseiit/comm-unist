package com.google.android.gms.internal;

import com.google.android.gms.cast.games.GameManagerClient;
import java.io.IOException;

final class zzawz extends zzaxh {
    final /* synthetic */ zzawy zzaxd;

    zzawz(zzawy zzawy, GameManagerClient gameManagerClient) {
        this.zzaxd = zzawy;
        super(zzawy, gameManagerClient);
    }

    public final void execute() {
        try {
            this.zzaxd.zzasb.setMessageReceivedCallbacks(this.zzaxd.zzXj, this.zzaxd.getNamespace(), new zzaxa(this));
            this.zzaxd.zzov();
            this.zzaxd.zzou();
            this.zzaxd.zza(null, 1100, null, this.zzarw);
        } catch (IOException | IllegalStateException unused) {
            this.zzarw.zza(-1, 8, null);
        }
    }
}
