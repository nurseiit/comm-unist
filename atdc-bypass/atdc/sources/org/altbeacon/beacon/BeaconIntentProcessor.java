package org.altbeacon.beacon;

import android.annotation.TargetApi;
import android.app.IntentService;
import android.content.Intent;
import android.util.Log;
import java.util.Collection;
import org.altbeacon.beacon.service.MonitoringData;
import org.altbeacon.beacon.service.RangingData;

@TargetApi(3)
public class BeaconIntentProcessor extends IntentService {
    private static final String TAG = "BeaconIntentProcessor";
    private boolean initialized = false;

    public BeaconIntentProcessor() {
        super(TAG);
    }

    /* Access modifiers changed, original: protected */
    public void onHandleIntent(Intent intent) {
        RangingData rangingData;
        BeaconManager.logDebug(TAG, "got an intent to process");
        MonitoringData monitoringData = null;
        if (intent == null || intent.getExtras() == null) {
            rangingData = null;
        } else {
            monitoringData = (MonitoringData) intent.getExtras().get("monitoringData");
            rangingData = (RangingData) intent.getExtras().get("rangingData");
        }
        if (rangingData != null) {
            BeaconManager.logDebug(TAG, "got ranging data");
            if (rangingData.getBeacons() == null) {
                Log.w(TAG, "Ranging data has a null beacons collection");
            }
            RangeNotifier rangingNotifier = BeaconManager.getInstanceForApplication(this).getRangingNotifier();
            Collection beacons = rangingData.getBeacons();
            if (rangingNotifier != null) {
                rangingNotifier.didRangeBeaconsInRegion(beacons, rangingData.getRegion());
            } else {
                BeaconManager.logDebug(TAG, "but ranging notifier is null, so we're dropping it.");
            }
            rangingNotifier = BeaconManager.getInstanceForApplication(this).getDataRequestNotifier();
            if (rangingNotifier != null) {
                rangingNotifier.didRangeBeaconsInRegion(beacons, rangingData.getRegion());
            }
        }
        if (monitoringData != null) {
            BeaconManager.logDebug(TAG, "got monitoring data");
            MonitorNotifier monitoringNotifier = BeaconManager.getInstanceForApplication(this).getMonitoringNotifier();
            if (monitoringNotifier != null) {
                String str = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Calling monitoring notifier:");
                stringBuilder.append(monitoringNotifier);
                BeaconManager.logDebug(str, stringBuilder.toString());
                monitoringNotifier.didDetermineStateForRegion(monitoringData.isInside(), monitoringData.getRegion());
                if (monitoringData.isInside()) {
                    monitoringNotifier.didEnterRegion(monitoringData.getRegion());
                } else {
                    monitoringNotifier.didExitRegion(monitoringData.getRegion());
                }
            }
        }
    }
}
