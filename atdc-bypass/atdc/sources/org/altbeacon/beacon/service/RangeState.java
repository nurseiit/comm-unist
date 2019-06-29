package org.altbeacon.beacon.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import org.altbeacon.beacon.Beacon;
import org.altbeacon.beacon.BeaconManager;

public class RangeState {
    private static final String TAG = "RangeState";
    private Callback mCallback;
    private Map<Beacon, RangedBeacon> mRangedBeacons = new HashMap();

    public RangeState(Callback callback) {
        this.mCallback = callback;
    }

    public Callback getCallback() {
        return this.mCallback;
    }

    public void addBeacon(Beacon beacon) {
        if (this.mRangedBeacons.containsKey(beacon)) {
            RangedBeacon rangedBeacon = (RangedBeacon) this.mRangedBeacons.get(beacon);
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("adding ");
            stringBuilder.append(beacon.toString());
            stringBuilder.append(" to existing range for: ");
            stringBuilder.append(rangedBeacon.toString());
            BeaconManager.logDebug(str, stringBuilder.toString());
            rangedBeacon.updateBeacon(beacon);
            return;
        }
        String str2 = TAG;
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append("adding ");
        stringBuilder2.append(beacon.toString());
        stringBuilder2.append(" to new rangedBeacon");
        BeaconManager.logDebug(str2, stringBuilder2.toString());
        this.mRangedBeacons.put(beacon, new RangedBeacon(beacon));
    }

    public synchronized Collection<Beacon> finalizeBeacons() {
        ArrayList arrayList;
        HashMap hashMap = new HashMap();
        arrayList = new ArrayList();
        synchronized (this.mRangedBeacons) {
            for (Beacon beacon : this.mRangedBeacons.keySet()) {
                RangedBeacon rangedBeacon = (RangedBeacon) this.mRangedBeacons.get(beacon);
                if (rangedBeacon.isTracked()) {
                    rangedBeacon.commitMeasurements();
                    arrayList.add(rangedBeacon.getBeacon());
                }
                if ((rangedBeacon.noMeasurementsAvailable() ^ 1) == 1) {
                    rangedBeacon.setTracked(false);
                    hashMap.put(beacon, rangedBeacon);
                } else {
                    BeaconManager.logDebug(TAG, "Dumping beacon from RangeState because it has no recent measurements.");
                }
            }
            this.mRangedBeacons = hashMap;
        }
        return arrayList;
    }
}
