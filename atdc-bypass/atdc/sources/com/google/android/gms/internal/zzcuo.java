package com.google.android.gms.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.support.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.zzbo;
import java.util.Random;

public final class zzcuo {
    private final Context mContext;
    private final Random zzAO;
    private final String zzbDw;

    public zzcuo(Context context, String str) {
        this(context, str, new Random());
    }

    @VisibleForTesting
    private zzcuo(Context context, String str, Random random) {
        this.mContext = (Context) zzbo.zzu(context);
        this.zzbDw = (String) zzbo.zzu(str);
        this.zzAO = random;
    }

    private final SharedPreferences zzAW() {
        Context context = this.mContext;
        String valueOf = String.valueOf("v5_gtmContainerRefreshPolicy_");
        String valueOf2 = String.valueOf(this.zzbDw);
        return context.getSharedPreferences(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf), 0);
    }

    private final long zzg(long j, long j2) {
        SharedPreferences zzAW = zzAW();
        long max = Math.max(0, zzAW.getLong("FORBIDDEN_COUNT", 0));
        return (long) (this.zzAO.nextFloat() * ((float) (j + ((long) ((((float) max) / ((float) ((max + Math.max(0, zzAW.getLong("SUCCESSFUL_COUNT", 0))) + 1))) * ((float) (j2 - j)))))));
    }

    public final long zzAS() {
        return zzg(7200000, 259200000) + 43200000;
    }

    public final long zzAT() {
        return zzg(600000, 86400000) + 3600000;
    }

    @SuppressLint({"CommitPrefEdits"})
    public final void zzAU() {
        SharedPreferences zzAW = zzAW();
        long j = zzAW.getLong("FORBIDDEN_COUNT", 0);
        long j2 = zzAW.getLong("SUCCESSFUL_COUNT", 0);
        Editor edit = zzAW.edit();
        j = j == 0 ? 3 : Math.min(10, j + 1);
        long max = Math.max(0, Math.min(j2, 10 - j));
        edit.putLong("FORBIDDEN_COUNT", j);
        edit.putLong("SUCCESSFUL_COUNT", max);
        edit.apply();
    }

    @SuppressLint({"CommitPrefEdits"})
    public final void zzAV() {
        SharedPreferences zzAW = zzAW();
        long j = zzAW.getLong("SUCCESSFUL_COUNT", 0);
        long j2 = zzAW.getLong("FORBIDDEN_COUNT", 0);
        long min = Math.min(10, j + 1);
        long max = Math.max(0, Math.min(j2, 10 - min));
        Editor edit = zzAW.edit();
        edit.putLong("SUCCESSFUL_COUNT", min);
        edit.putLong("FORBIDDEN_COUNT", max);
        edit.apply();
    }

    public final long zzCi() {
        return Math.max(0, zzAW().getLong("FORBIDDEN_COUNT", 0)) == 0 ? 0 : zzg(10000, 600000) + 10000;
    }

    public final boolean zzCj() {
        return Math.max(0, zzAW().getLong("FORBIDDEN_COUNT", 0)) > 0;
    }
}
