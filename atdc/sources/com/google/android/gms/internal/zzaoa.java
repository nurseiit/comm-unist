package com.google.android.gms.internal;

import com.google.android.gms.common.util.zze;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;

public final class zzaoa {
    private final String zzaeX;
    private final long zzaih;
    private final int zzaii;
    private double zzaij;
    private long zzaik;
    private final Object zzail;
    private final zze zzvw;

    private zzaoa(int i, long j, String str, zze zze) {
        this.zzail = new Object();
        this.zzaii = 60;
        this.zzaij = (double) this.zzaii;
        this.zzaih = 2000;
        this.zzaeX = str;
        this.zzvw = zze;
    }

    public zzaoa(String str, zze zze) {
        this(60, 2000, str, zze);
    }

    public final boolean zzlL() {
        synchronized (this.zzail) {
            long currentTimeMillis = this.zzvw.currentTimeMillis();
            if (this.zzaij < ((double) this.zzaii)) {
                double d = ((double) (currentTimeMillis - this.zzaik)) / ((double) this.zzaih);
                if (d > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                    this.zzaij = Math.min((double) this.zzaii, this.zzaij + d);
                }
            }
            this.zzaik = currentTimeMillis;
            if (this.zzaij >= 1.0d) {
                this.zzaij -= 1.0d;
                return true;
            }
            String str = this.zzaeX;
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 34);
            stringBuilder.append("Excessive ");
            stringBuilder.append(str);
            stringBuilder.append(" detected; call ignored.");
            zzaob.zzaT(stringBuilder.toString());
            return false;
        }
    }
}
