package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.common.internal.zzbo;

public final class zzaok {
    private static Boolean zzadu;
    private final Context mContext;
    private final Handler mHandler = new Handler();
    private final zzaon zzaiD;

    public zzaok(zzaon zzaon) {
        this.mContext = zzaon.getContext();
        zzbo.zzu(this.mContext);
        this.zzaiD = zzaon;
    }

    public static boolean zzad(Context context) {
        zzbo.zzu(context);
        if (zzadu != null) {
            return zzadu.booleanValue();
        }
        boolean zzw = zzaos.zzw(context, "com.google.android.gms.analytics.AnalyticsService");
        zzadu = Boolean.valueOf(zzw);
        return zzw;
    }

    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public final void onCreate() {
        zzamj.zzaf(this.mContext).zzkr().zzbo("Local AnalyticsService is starting up");
    }

    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public final void onDestroy() {
        zzamj.zzaf(this.mContext).zzkr().zzbo("Local AnalyticsService is shutting down");
    }

    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public final int onStartCommand(Intent intent, int i, int i2) {
        try {
            synchronized (zzaoj.zzuF) {
                zzctz zzctz = zzaoj.zzads;
                if (zzctz != null && zzctz.isHeld()) {
                    zzctz.release();
                }
            }
        } catch (SecurityException unused) {
        }
        zzamj zzaf = zzamj.zzaf(this.mContext);
        zzaoc zzkr = zzaf.zzkr();
        if (intent == null) {
            zzkr.zzbr("AnalyticsService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        zzkr.zza("Local AnalyticsService called. startId, action", Integer.valueOf(i2), action);
        if ("com.google.android.gms.analytics.ANALYTICS_DISPATCH".equals(action)) {
            zzaf.zzkv().zza(new zzaol(this, i2, zzaf, zzkr));
        }
        return 2;
    }
}
