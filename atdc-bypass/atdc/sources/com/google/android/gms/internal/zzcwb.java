package com.google.android.gms.internal;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;

final class zzcwb implements zzcvt {
    private final long zzaih;
    private final int zzaii;
    private double zzaij;
    private final Object zzail;
    private long zzbGB;

    public zzcwb() {
        this(60, 2000);
    }

    private zzcwb(int i, long j) {
        this.zzail = new Object();
        this.zzaii = 60;
        this.zzaij = (double) this.zzaii;
        this.zzaih = 2000;
    }

    public final boolean zzlL() {
        synchronized (this.zzail) {
            long currentTimeMillis = System.currentTimeMillis();
            if (this.zzaij < ((double) this.zzaii)) {
                double d = ((double) (currentTimeMillis - this.zzbGB)) / ((double) this.zzaih);
                if (d > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                    this.zzaij = Math.min((double) this.zzaii, this.zzaij + d);
                }
            }
            this.zzbGB = currentTimeMillis;
            if (this.zzaij >= 1.0d) {
                this.zzaij -= 1.0d;
                return true;
            }
            zzcvk.zzaT("No more tokens available.");
            return false;
        }
    }
}
