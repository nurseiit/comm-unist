package com.google.android.gms.internal;

final class zzuf implements Runnable {
    private /* synthetic */ zzud zzMC;
    private /* synthetic */ zzue zzMD;

    zzuf(zzue zzue, zzud zzud) {
        this.zzMD = zzue;
        this.zzMC = zzud;
    }

    public final void run() {
        synchronized (this.zzMD.mLock) {
            if (this.zzMD.zzMA != -2) {
                return;
            }
            this.zzMD.zzMz = this.zzMD.zzfl();
            if (this.zzMD.zzMz == null) {
                this.zzMD.zzo(4);
            } else if (!this.zzMD.zzfm() || this.zzMD.zzp(1)) {
                this.zzMC.zza(this.zzMD);
                this.zzMD.zza(this.zzMC);
            } else {
                String zzf = this.zzMD.zzMs;
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(zzf).length() + 56);
                stringBuilder.append("Ignoring adapter ");
                stringBuilder.append(zzf);
                stringBuilder.append(" as delayed impression is not supported");
                zzajc.zzaT(stringBuilder.toString());
                this.zzMD.zzo(2);
            }
        }
    }
}
