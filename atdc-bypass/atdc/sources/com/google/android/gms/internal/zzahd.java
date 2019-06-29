package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class zzahd extends BroadcastReceiver {
    private /* synthetic */ zzagz zzZy;

    private zzahd(zzagz zzagz) {
        this.zzZy = zzagz;
    }

    /* synthetic */ zzahd(zzagz zzagz, zzaha zzaha) {
        this(zzagz);
    }

    public final void onReceive(Context context, Intent intent) {
        if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
            this.zzZy.zzZu = true;
            return;
        }
        if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            this.zzZy.zzZu = false;
        }
    }
}
