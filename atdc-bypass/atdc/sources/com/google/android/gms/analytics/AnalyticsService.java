package com.google.android.gms.analytics;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.internal.zzaok;
import com.google.android.gms.internal.zzaon;

public final class AnalyticsService extends Service implements zzaon {
    private zzaok zzadm;

    private final zzaok zzjk() {
        if (this.zzadm == null) {
            this.zzadm = new zzaok(this);
        }
        return this.zzadm;
    }

    public final boolean callServiceStopSelfResult(int i) {
        return stopSelfResult(i);
    }

    public final Context getContext() {
        return this;
    }

    public final IBinder onBind(Intent intent) {
        zzjk();
        return null;
    }

    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public final void onCreate() {
        super.onCreate();
        zzjk().onCreate();
    }

    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public final void onDestroy() {
        zzjk().onDestroy();
        super.onDestroy();
    }

    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public final int onStartCommand(Intent intent, int i, int i2) {
        return zzjk().onStartCommand(intent, i, i2);
    }
}
