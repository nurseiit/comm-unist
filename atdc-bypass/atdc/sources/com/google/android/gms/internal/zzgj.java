package com.google.android.gms.internal;

import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;
import java.lang.ref.WeakReference;

final class zzgj implements ActivityLifecycleCallbacks {
    private final WeakReference<ActivityLifecycleCallbacks> zzxT;
    private boolean zzxU = false;
    private final Application zzxz;

    public zzgj(Application application, ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.zzxT = new WeakReference(activityLifecycleCallbacks);
        this.zzxz = application;
    }

    private final void zza(zzgr zzgr) {
        try {
            ActivityLifecycleCallbacks activityLifecycleCallbacks = (ActivityLifecycleCallbacks) this.zzxT.get();
            if (activityLifecycleCallbacks != null) {
                zzgr.zza(activityLifecycleCallbacks);
                return;
            }
            if (!this.zzxU) {
                this.zzxz.unregisterActivityLifecycleCallbacks(this);
                this.zzxU = true;
            }
        } catch (Exception e) {
            zzajc.zzb("Error while dispatching lifecycle callback.", e);
        }
    }

    public final void onActivityCreated(Activity activity, Bundle bundle) {
        zza(new zzgk(this, activity, bundle));
    }

    public final void onActivityDestroyed(Activity activity) {
        zza(new zzgq(this, activity));
    }

    public final void onActivityPaused(Activity activity) {
        zza(new zzgn(this, activity));
    }

    public final void onActivityResumed(Activity activity) {
        zza(new zzgm(this, activity));
    }

    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        zza(new zzgp(this, activity, bundle));
    }

    public final void onActivityStarted(Activity activity) {
        zza(new zzgl(this, activity));
    }

    public final void onActivityStopped(Activity activity) {
        zza(new zzgo(this, activity));
    }
}
