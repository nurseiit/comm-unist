package org.altbeacon.beacon.distance;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import org.altbeacon.beacon.BeaconManager;

public class CurveFittedDistanceCalculator implements DistanceCalculator {
    public static final String TAG = "CurveFittedDistanceCalculator";
    private double mCoefficient1;
    private double mCoefficient2;
    private double mCoefficient3;

    public CurveFittedDistanceCalculator(double d, double d2, double d3) {
        this.mCoefficient1 = d;
        this.mCoefficient2 = d2;
        this.mCoefficient3 = d3;
    }

    public double calculateDistance(int i, double d) {
        if (d == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            return -1.0d;
        }
        double pow;
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("calculating distance based on mRssi of ");
        stringBuilder.append(d);
        stringBuilder.append(" and txPower of ");
        stringBuilder.append(i);
        BeaconManager.logDebug(str, stringBuilder.toString());
        double d2 = (d * 1.0d) / ((double) i);
        if (d2 < 1.0d) {
            pow = Math.pow(d2, 10.0d);
        } else {
            pow = (this.mCoefficient1 * Math.pow(d2, this.mCoefficient2)) + this.mCoefficient3;
        }
        String str2 = TAG;
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append(" avg mRssi: ");
        stringBuilder2.append(d);
        stringBuilder2.append(" distance: ");
        stringBuilder2.append(pow);
        BeaconManager.logDebug(str2, stringBuilder2.toString());
        return pow;
    }
}
