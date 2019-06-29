package org.altbeacon.beacon.startup;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.util.Log;
import org.altbeacon.beacon.BeaconIntentProcessor;
import org.altbeacon.beacon.BeaconManager;
import org.altbeacon.beacon.service.BeaconService;

@TargetApi(4)
public class StartupBroadcastReceiver extends BroadcastReceiver {
    private static final String TAG = "StartupBroadcastReceiver";
    private Context context;

    public void onReceive(Context context, Intent intent) {
        BeaconManager.logDebug(TAG, "onReceive called in startup broadcast receiver");
        if (VERSION.SDK_INT < 18) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Not starting up beacon service because we do not have SDK version 18 (Android 4.3).  We have: ");
            stringBuilder.append(VERSION.SDK_INT);
            Log.w(str, stringBuilder.toString());
            return;
        }
        BeaconManager.getInstanceForApplication(context.getApplicationContext());
        context.startService(new Intent(context, BeaconService.class));
        context.startService(new Intent(context, BeaconIntentProcessor.class));
    }
}
