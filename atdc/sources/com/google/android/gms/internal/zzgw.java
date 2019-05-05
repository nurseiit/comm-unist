package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.zzbs;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@TargetApi(14)
final class zzgw implements ActivityLifecycleCallbacks {
    @Nullable
    private Activity mActivity;
    private Context mContext;
    private final Object mLock = new Object();
    private boolean zzuH = false;
    private boolean zzyq = true;
    private boolean zzyr = false;
    private final List<zzgy> zzys = new ArrayList();
    private final List<zzhl> zzyt = new ArrayList();
    private Runnable zzyu;
    private long zzyv;

    zzgw() {
    }

    private final void setActivity(Activity activity) {
        synchronized (this.mLock) {
            if (!activity.getClass().getName().startsWith("com.google.android.gms.ads")) {
                this.mActivity = activity;
            }
        }
    }

    @Nullable
    public final Activity getActivity() {
        return this.mActivity;
    }

    @Nullable
    public final Context getContext() {
        return this.mContext;
    }

    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    public final void onActivityDestroyed(Activity activity) {
        synchronized (this.mLock) {
            if (this.mActivity == null) {
                return;
            }
            if (this.mActivity.equals(activity)) {
                this.mActivity = null;
            }
            Iterator it = this.zzyt.iterator();
            while (it.hasNext()) {
                try {
                    if (((zzhl) it.next()).zza(activity)) {
                        it.remove();
                    }
                } catch (Exception e) {
                    zzbs.zzbD().zza(e, "AppActivityTracker.ActivityListener.onActivityDestroyed");
                    zzajc.zzb("onActivityStateChangedListener threw exception.", e);
                }
            }
        }
    }

    public final void onActivityPaused(Activity activity) {
        setActivity(activity);
        synchronized (this.mLock) {
            Iterator it = this.zzyt.iterator();
            while (it.hasNext()) {
                it.next();
            }
        }
        this.zzyr = true;
        if (this.zzyu != null) {
            zzagz.zzZr.removeCallbacks(this.zzyu);
        }
        Handler handler = zzagz.zzZr;
        zzgx zzgx = new zzgx(this);
        this.zzyu = zzgx;
        handler.postDelayed(zzgx, this.zzyv);
    }

    public final void onActivityResumed(Activity activity) {
        setActivity(activity);
        this.zzyr = false;
        int i = this.zzyq ^ 1;
        this.zzyq = true;
        if (this.zzyu != null) {
            zzagz.zzZr.removeCallbacks(this.zzyu);
        }
        synchronized (this.mLock) {
            Iterator it = this.zzyt.iterator();
            while (it.hasNext()) {
                it.next();
            }
            if (i != 0) {
                for (zzgy zzf : this.zzys) {
                    try {
                        zzf.zzf(true);
                    } catch (Exception e) {
                        zzajc.zzb("OnForegroundStateChangedListener threw exception.", e);
                    }
                }
            } else {
                zzajc.zzaC("App is still foreground.");
            }
        }
    }

    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public final void onActivityStarted(Activity activity) {
        setActivity(activity);
    }

    public final void onActivityStopped(Activity activity) {
    }

    public final void zza(Application application, Context context) {
        if (!this.zzuH) {
            application.registerActivityLifecycleCallbacks(this);
            if (context instanceof Activity) {
                setActivity((Activity) context);
            }
            this.mContext = context;
            this.zzyv = ((Long) zzbs.zzbL().zzd(zzmo.zzDK)).longValue();
            this.zzuH = true;
        }
    }

    public final void zza(zzgy zzgy) {
        synchronized (this.mLock) {
            this.zzys.add(zzgy);
        }
    }
}
