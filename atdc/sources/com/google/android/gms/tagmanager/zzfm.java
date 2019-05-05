package com.google.android.gms.tagmanager;

import com.google.android.gms.common.util.zze;
import com.google.android.gms.common.util.zzi;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;

final class zzfm implements zzek {
    private final long zzaih;
    private final int zzaii;
    private double zzaij;
    private final Object zzail;
    private long zzbGB;
    private final zze zzvw;

    public zzfm() {
        this(60, 2000);
    }

    private zzfm(int i, long j) {
        this.zzail = new Object();
        this.zzaii = 60;
        this.zzaij = (double) this.zzaii;
        this.zzaih = 2000;
        this.zzvw = zzi.zzrY();
    }

    public final boolean zzlL() {
        synchronized (this.zzail) {
            long currentTimeMillis = this.zzvw.currentTimeMillis();
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
            zzdj.zzaT("No more tokens available.");
            return false;
        }
    }
}
