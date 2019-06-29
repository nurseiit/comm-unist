package com.google.android.gms.internal;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;

final class zzgp implements zzgr {
    private /* synthetic */ Activity val$activity;
    private /* synthetic */ Bundle zzxV;

    zzgp(zzgj zzgj, Activity activity, Bundle bundle) {
        this.val$activity = activity;
        this.zzxV = bundle;
    }

    public final void zza(ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivitySaveInstanceState(this.val$activity, this.zzxV);
    }
}
