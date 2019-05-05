package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class zzfj extends BroadcastReceiver {
    private /* synthetic */ zzfi zzxh;

    zzfj(zzfi zzfi) {
        this.zzxh = zzfi;
    }

    public final void onReceive(Context context, Intent intent) {
        this.zzxh.zzg(3);
    }
}
