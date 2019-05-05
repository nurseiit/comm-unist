package com.google.android.gms.tagmanager;

import com.google.android.gms.common.util.zze;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;

final class zzdh implements zzek {
    private final String zzaeX;
    private final long zzaih = 900000;
    private final int zzaii = 5;
    private double zzaij = ((double) Math.min(1, 5));
    private long zzaik;
    private final Object zzail = new Object();
    private final long zzbFo = 5000;
    private final zze zzvw;

    public zzdh(int i, int i2, long j, long j2, String str, zze zze) {
        this.zzaeX = str;
        this.zzvw = zze;
    }

    public final boolean zzlL() {
        synchronized (this.zzail) {
            long currentTimeMillis = this.zzvw.currentTimeMillis();
            String str;
            StringBuilder stringBuilder;
            if (currentTimeMillis - this.zzaik < this.zzbFo) {
                str = this.zzaeX;
                stringBuilder = new StringBuilder(String.valueOf(str).length() + 34);
                stringBuilder.append("Excessive ");
                stringBuilder.append(str);
                stringBuilder.append(" detected; call ignored.");
                zzdj.zzaT(stringBuilder.toString());
                return false;
            }
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
            str = this.zzaeX;
            stringBuilder = new StringBuilder(String.valueOf(str).length() + 34);
            stringBuilder.append("Excessive ");
            stringBuilder.append(str);
            stringBuilder.append(" detected; call ignored.");
            zzdj.zzaT(stringBuilder.toString());
            return false;
        }
    }
}
