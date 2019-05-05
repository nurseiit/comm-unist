package com.google.android.gms.internal;

final class zznt implements Runnable {
    private /* synthetic */ zzns zzHQ;

    zznt(zzns zzns) {
        this.zzHQ = zzns;
    }

    public final void run() {
        if (this.zzHQ.zzHM != null) {
            this.zzHQ.zzHM.zzev();
            this.zzHQ.zzHM.zzet();
        }
        this.zzHQ.zzHM = null;
    }
}
