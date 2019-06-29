package com.google.android.gms.internal;

final class zznr implements Runnable {
    private /* synthetic */ zznq zzHN;

    zznr(zznq zznq) {
        this.zzHN = zznq;
    }

    public final void run() {
        if (this.zzHN.zzHM != null) {
            this.zzHN.zzHM.zzev();
            this.zzHN.zzHM.zzet();
        }
        this.zzHN.zzHM = null;
    }
}
