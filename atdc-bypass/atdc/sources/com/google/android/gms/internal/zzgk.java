package com.google.android.gms.internal;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;

final class zzgk implements zzgr {
    private /* synthetic */ Activity val$activity;
    private /* synthetic */ Bundle zzxV;

    zzgk(zzgj zzgj, Activity activity, Bundle bundle) {
        this.val$activity = activity;
        this.zzxV = bundle;
    }

    public final void zza(ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityCreated(this.val$activity, this.zzxV);
    }
}
