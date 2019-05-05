package com.google.android.gms.analytics;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.RequiresPermission;
import android.util.Log;
import com.google.android.gms.internal.zzamj;
import com.google.android.gms.internal.zzans;
import com.google.android.gms.internal.zzaob;
import com.google.android.gms.internal.zzaop;
import com.google.android.gms.internal.zzaor;
import com.google.android.gms.internal.zzaot;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public final class GoogleAnalytics extends zza {
    private static List<Runnable> zzadC = new ArrayList();
    private Set<zza> zzadD = new HashSet();
    private boolean zzadE;
    private boolean zzadF;
    private volatile boolean zzadG;
    private boolean zzadH;
    private boolean zzuH;

    interface zza {
        void zzl(Activity activity);

        void zzm(Activity activity);
    }

    @TargetApi(14)
    class zzb implements ActivityLifecycleCallbacks {
        zzb() {
        }

        public final void onActivityCreated(Activity activity, Bundle bundle) {
        }

        public final void onActivityDestroyed(Activity activity) {
        }

        public final void onActivityPaused(Activity activity) {
        }

        public final void onActivityResumed(Activity activity) {
        }

        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        public final void onActivityStarted(Activity activity) {
            GoogleAnalytics.this.zzj(activity);
        }

        public final void onActivityStopped(Activity activity) {
            GoogleAnalytics.this.zzk(activity);
        }
    }

    public GoogleAnalytics(zzamj zzamj) {
        super(zzamj);
    }

    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public static GoogleAnalytics getInstance(Context context) {
        return zzamj.zzaf(context).zzkG();
    }

    public static void zzjo() {
        synchronized (GoogleAnalytics.class) {
            if (zzadC != null) {
                for (Runnable run : zzadC) {
                    run.run();
                }
                zzadC = null;
            }
        }
    }

    public final void dispatchLocalHits() {
        zzji().zzkv().zzkl();
    }

    @TargetApi(14)
    public final void enableAutoActivityReports(Application application) {
        if (!this.zzadE) {
            application.registerActivityLifecycleCallbacks(new zzb());
            this.zzadE = true;
        }
    }

    public final boolean getAppOptOut() {
        return this.zzadG;
    }

    @Deprecated
    public final Logger getLogger() {
        return zzaob.getLogger();
    }

    public final void initialize() {
        zzaot zzkx = zzji().zzkx();
        zzkx.zzmg();
        if (zzkx.zzmh()) {
            setDryRun(zzkx.zzmi());
        }
        zzkx.zzmg();
        this.zzuH = true;
    }

    public final boolean isDryRunEnabled() {
        return this.zzadF;
    }

    public final boolean isInitialized() {
        return this.zzuH;
    }

    public final Tracker newTracker(int i) {
        Tracker tracker;
        synchronized (this) {
            tracker = new Tracker(zzji(), null, null);
            if (i > 0) {
                zzaor zzaor = (zzaor) new zzaop(zzji()).zzP(i);
                if (zzaor != null) {
                    tracker.zza(zzaor);
                }
            }
            tracker.initialize();
        }
        return tracker;
    }

    public final Tracker newTracker(String str) {
        Tracker tracker;
        synchronized (this) {
            tracker = new Tracker(zzji(), str, null);
            tracker.initialize();
        }
        return tracker;
    }

    public final void reportActivityStart(Activity activity) {
        if (!this.zzadE) {
            zzj(activity);
        }
    }

    public final void reportActivityStop(Activity activity) {
        if (!this.zzadE) {
            zzk(activity);
        }
    }

    public final void setAppOptOut(boolean z) {
        this.zzadG = z;
        if (this.zzadG) {
            zzji().zzkv().zzkk();
        }
    }

    public final void setDryRun(boolean z) {
        this.zzadF = z;
    }

    public final void setLocalDispatchPeriod(int i) {
        zzji().zzkv().setLocalDispatchPeriod(i);
    }

    @Deprecated
    public final void setLogger(Logger logger) {
        zzaob.setLogger(logger);
        if (!this.zzadH) {
            String str = (String) zzans.zzahg.get();
            String str2 = (String) zzans.zzahg.get();
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(str2).length() + 112);
            stringBuilder.append("GoogleAnalytics.setLogger() is deprecated. To enable debug logging, please run:\nadb shell setprop log.tag.");
            stringBuilder.append(str2);
            stringBuilder.append(" DEBUG");
            Log.i(str, stringBuilder.toString());
            this.zzadH = true;
        }
    }

    /* Access modifiers changed, original: final */
    public final void zza(zza zza) {
        this.zzadD.add(zza);
        Context context = zzji().getContext();
        if (context instanceof Application) {
            enableAutoActivityReports((Application) context);
        }
    }

    /* Access modifiers changed, original: final */
    public final void zzb(zza zza) {
        this.zzadD.remove(zza);
    }

    /* Access modifiers changed, original: final */
    public final void zzj(Activity activity) {
        for (zza zzl : this.zzadD) {
            zzl.zzl(activity);
        }
    }

    /* Access modifiers changed, original: final */
    public final void zzk(Activity activity) {
        for (zza zzm : this.zzadD) {
            zzm.zzm(activity);
        }
    }
}
