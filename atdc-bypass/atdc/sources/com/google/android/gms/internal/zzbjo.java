package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;

public final class zzbjo {
    private final acs zzaLk;

    private zzbjo(acs acs) {
        this.zzaLk = (acs) zzbo.zzu(acs);
    }

    private static acs zza(int i, int i2, int i3, int i4, double d, double d2, long j, long j2) {
        acs acs = new acs();
        acs.zzcqq = i;
        acs.zzcrm = 1;
        acs.zzcqr = j;
        acs.zzcrr = j2;
        acs.zzcrn = i3;
        acs.zzcro = i4;
        acs.zzcrp = d;
        acs.zzcrq = d2;
        return acs;
    }

    public static zzbjo zza(int i, int i2, double d) {
        zzbo.zzaf(d >= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
        return new zzbjo(zza(2, 1, i, i2, d, d, 3000, 0));
    }

    public static zzbjo zza(int i, int i2, double d, long j) {
        zzbo.zzaf(d >= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
        return new zzbjo(zza(1, 1, i, i2, d, d, 0, j));
    }

    public static zzbjo zzb(int i, int i2, double d) {
        zzbo.zzaf(d >= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
        return new zzbjo(zza(3, 1, i, i2, d, d, 3000, 0));
    }

    public final acs zzsG() {
        return this.zzaLk;
    }
}
