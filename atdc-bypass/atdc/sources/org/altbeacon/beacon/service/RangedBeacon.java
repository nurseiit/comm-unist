package org.altbeacon.beacon.service;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import org.altbeacon.beacon.Beacon;
import org.altbeacon.beacon.BeaconManager;

public class RangedBeacon {
    public static long DEFAULT_SAMPLE_EXPIRATION_MILLISECONDS = 2000;
    private static String TAG = "RangedBeacon";
    private static long sampleExpirationMilliseconds = DEFAULT_SAMPLE_EXPIRATION_MILLISECONDS;
    Beacon mBeacon;
    private ArrayList<Measurement> mMeasurements = new ArrayList();
    private boolean mTracked = true;

    private class Measurement implements Comparable<Measurement> {
        Integer rssi;
        long timestamp;

        private Measurement() {
        }

        public int compareTo(Measurement measurement) {
            return this.rssi.compareTo(measurement.rssi);
        }
    }

    public RangedBeacon(Beacon beacon) {
        updateBeacon(beacon);
    }

    public void updateBeacon(Beacon beacon) {
        this.mBeacon = beacon;
        addMeasurement(Integer.valueOf(this.mBeacon.getRssi()));
    }

    public boolean isTracked() {
        return this.mTracked;
    }

    public void setTracked(boolean z) {
        this.mTracked = z;
    }

    public Beacon getBeacon() {
        return this.mBeacon;
    }

    public void commitMeasurements() {
        if (this.mMeasurements.size() > 0) {
            double calculateRunningAverage = calculateRunningAverage();
            this.mBeacon.setRunningAverageRssi(calculateRunningAverage);
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("calculated new runningAverageRssi:");
            stringBuilder.append(calculateRunningAverage);
            BeaconManager.logDebug(str, stringBuilder.toString());
            return;
        }
        BeaconManager.logDebug(TAG, "No measurements available to calculate running average");
    }

    public static void setSampleExpirationMilliseconds(long j) {
        sampleExpirationMilliseconds = j;
    }

    public void addMeasurement(Integer num) {
        this.mTracked = true;
        Measurement measurement = new Measurement();
        measurement.rssi = num;
        measurement.timestamp = new Date().getTime();
        this.mMeasurements.add(measurement);
    }

    public boolean noMeasurementsAvailable() {
        return this.mMeasurements.size() == 0;
    }

    private synchronized void refreshMeasurements() {
        Date date = new Date();
        ArrayList arrayList = new ArrayList();
        Iterator it = this.mMeasurements.iterator();
        while (it.hasNext()) {
            Measurement measurement = (Measurement) it.next();
            if (date.getTime() - measurement.timestamp < sampleExpirationMilliseconds) {
                arrayList.add(measurement);
            }
        }
        this.mMeasurements = arrayList;
        Collections.sort(this.mMeasurements);
    }

    private double calculateRunningAverage() {
        int i;
        refreshMeasurements();
        int size = this.mMeasurements.size();
        int i2 = size - 1;
        if (size > 2) {
            i2 = size / 10;
            i = i2 + 1;
            i2 = (size - i2) - 2;
        } else {
            i = 0;
        }
        double d = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        for (int i3 = i; i3 <= i2; i3++) {
            d += (double) ((Measurement) this.mMeasurements.get(i3)).rssi.intValue();
        }
        d /= (double) ((i2 - i) + 1);
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Running average mRssi based on ");
        stringBuilder.append(size);
        stringBuilder.append(" measurements: ");
        stringBuilder.append(d);
        BeaconManager.logDebug(str, stringBuilder.toString());
        return d;
    }
}
