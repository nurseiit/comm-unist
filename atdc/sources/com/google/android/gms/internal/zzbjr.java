package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.zzbo;
import java.util.TimeZone;

public final class zzbjr {
    private final add zzaLm;

    private zzbjr(add add) {
        this.zzaLm = (add) zzbo.zzu(add);
    }

    public static zzbjr zza(int i, TimeZone timeZone, long j, long j2) {
        boolean z = false;
        zzbo.zzaf(i != 1);
        zzbo.zzaf(j >= 0);
        zzbo.zzaf(j <= 86400000);
        zzbo.zzaf(j2 >= 0);
        zzbo.zzaf(j2 <= 86400000);
        if (j <= j2) {
            z = true;
        }
        zzbo.zzaf(z);
        return new zzbjr(zzc(i, timeZone, j, j2));
    }

    public static zzbjr zzb(int i, TimeZone timeZone, long j, long j2) {
        int i2 = 6;
        boolean z = false;
        boolean z2 = i == 1 || i == 2 || i == 3 || i == 4 || i == 5 || i == 6 || i == 7;
        zzbo.zzaf(z2);
        zzbo.zzaf(j >= 0);
        zzbo.zzaf(j <= 86400000);
        zzbo.zzaf(j2 >= 0);
        zzbo.zzaf(j2 <= 86400000);
        if (j <= j2) {
            z = true;
        }
        zzbo.zzaf(z);
        switch (i) {
            case 1:
                i2 = 5;
                break;
            case 2:
                break;
            case 3:
                i2 = 7;
                break;
            case 4:
                i2 = 8;
                break;
            case 5:
                i2 = 9;
                break;
            case 6:
                i2 = 10;
                break;
            case 7:
                i2 = 11;
                break;
            default:
                return null;
        }
        return new zzbjr(zzc(i2, timeZone, j, j2));
    }

    private static add zzc(int i, TimeZone timeZone, long j, long j2) {
        add add = new add();
        add.zzcqq = i;
        if (i != 1) {
            if (timeZone == null || TextUtils.isEmpty(timeZone.getID())) {
                add.zzcrI = true;
                add.zzaTb = j;
                add.zzcrG = j2;
                return add;
            }
            add.zzcrF = timeZone.getID();
        }
        add.zzcrI = false;
        add.zzaTb = j;
        add.zzcrG = j2;
        return add;
    }

    public static zzbjr zze(long j, long j2) {
        boolean z = false;
        zzbo.zzaf(j >= 0);
        zzbo.zzaf(j2 >= 0);
        if (j <= j2) {
            z = true;
        }
        zzbo.zzaf(z);
        return new zzbjr(zzc(1, null, j, j2));
    }

    public final add zzsI() {
        return this.zzaLm;
    }
}
