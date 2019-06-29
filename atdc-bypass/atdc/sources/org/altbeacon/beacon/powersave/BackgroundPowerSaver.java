package org.altbeacon.beacon.powersave;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.Log;
import org.altbeacon.beacon.BeaconManager;

@TargetApi(18)
public class BackgroundPowerSaver implements ActivityLifecycleCallbacks {
    private static final String TAG = "BackgroundPowerSaver";
    private int activeActivityCount;
    private BeaconManager beaconManager;

    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    public void onActivityDestroyed(Activity activity) {
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public void onActivityStarted(Activity activity) {
    }

    public void onActivityStopped(Activity activity) {
    }

    public BackgroundPowerSaver(Context context, boolean z) {
        this.activeActivityCount = 0;
        if (VERSION.SDK_INT < 18) {
            Log.w(TAG, "BackgroundPowerSaver requires SDK 18 or higher.");
            return;
        }
        if (context instanceof Application) {
            ((Application) context).registerActivityLifecycleCallbacks(this);
        } else {
            Log.e(TAG, "Context is not an application instance, so we cannot use the BackgroundPowerSaver");
        }
        BeaconManager beaconManager = this.beaconManager;
        this.beaconManager = BeaconManager.getInstanceForApplication(context);
    }

    public BackgroundPowerSaver(Context context) {
        this(context, false);
    }

    public void onActivityResumed(Activity activity) {
        String str;
        this.activeActivityCount++;
        if (this.activeActivityCount < 1) {
            str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("reset active activity count on resume.  It was ");
            stringBuilder.append(this.activeActivityCount);
            BeaconManager.logDebug(str, stringBuilder.toString());
            this.activeActivityCount = 1;
        }
        this.beaconManager.setBackgroundMode(false);
        str = TAG;
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append("activity resumed: ");
        stringBuilder2.append(activity);
        stringBuilder2.append("  active activities: ");
        stringBuilder2.append(this.activeActivityCount);
        BeaconManager.logDebug(str, stringBuilder2.toString());
    }

    public void onActivityPaused(Activity activity) {
        this.activeActivityCount--;
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("activity paused: ");
        stringBuilder.append(activity);
        stringBuilder.append("  active activities: ");
        stringBuilder.append(this.activeActivityCount);
        BeaconManager.logDebug(str, stringBuilder.toString());
        if (this.activeActivityCount < 1) {
            BeaconManager.logDebug(TAG, "setting background mode");
            this.beaconManager.setBackgroundMode(true);
        }
    }
}
