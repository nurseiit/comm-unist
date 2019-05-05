package com.google.android.gms.internal;

import com.google.android.gms.cast.games.GameManagerClient;
import com.google.android.gms.common.api.Status;
import java.util.Locale;

final class zzaxi implements zzayt {
    private /* synthetic */ zzawy zzaxj;
    private /* synthetic */ zzaxh zzaxm;

    zzaxi(zzaxh zzaxh, zzawy zzawy) {
        this.zzaxm = zzaxh;
        this.zzaxj = zzawy;
    }

    public final void zza(long j, int i, Object obj) {
        if (obj == null) {
            try {
                this.zzaxm.setResult(new zzaxj(new Status(i, null, null), this.zzaxm.zzaxl));
                return;
            } catch (ClassCastException unused) {
                this.zzaxm.setResult(zzaxh.zzk(new Status(13)));
                return;
            }
        }
        zzaxm zzaxm = (zzaxm) obj;
        zzaxl zzaxl = zzaxm.zzawU;
        if (zzaxl == null || zzaye.zza("1.0.0", zzaxl.getVersion())) {
            this.zzaxm.setResult(new zzaxj(new Status(i, zzaxm.zzaxv, null), this.zzaxm.zzaxl));
            return;
        }
        this.zzaxm.zzaxd.zzawU = null;
        this.zzaxm.setResult(zzaxh.zzk(new Status(GameManagerClient.STATUS_INCORRECT_VERSION, String.format(Locale.ROOT, "Incorrect Game Manager SDK version. Receiver: %s Sender: %s", new Object[]{zzaxl.getVersion(), "1.0.0"}))));
    }

    public final void zzx(long j) {
        this.zzaxm.setResult(zzaxh.zzk(new Status(2103)));
    }
}
