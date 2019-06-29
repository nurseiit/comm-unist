package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;

final class zzciu implements Runnable {
    private /* synthetic */ zzciq zzbuk;

    zzciu(zzciq zzciq) {
        this.zzbuk = zzciq;
    }

    public final void run() {
        zzcid zzcid = this.zzbuk.zzbua;
        Context context = this.zzbuk.zzbua.getContext();
        zzcem.zzxE();
        zzcid.onServiceDisconnected(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
