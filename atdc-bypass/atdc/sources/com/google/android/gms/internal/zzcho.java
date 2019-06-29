package com.google.android.gms.internal;

import com.google.android.gms.measurement.AppMeasurement.ConditionalUserProperty;

final class zzcho implements Runnable {
    private /* synthetic */ zzchl zzbtt;
    private /* synthetic */ ConditionalUserProperty zzbtu;

    zzcho(zzchl zzchl, ConditionalUserProperty conditionalUserProperty) {
        this.zzbtt = zzchl;
        this.zzbtu = conditionalUserProperty;
    }

    public final void run() {
        this.zzbtt.zzc(this.zzbtu);
    }
}
