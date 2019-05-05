package org.altbeacon.beacon.client;

import android.os.Handler;
import org.altbeacon.beacon.Beacon;
import org.altbeacon.beacon.BeaconDataNotifier;

public class NullBeaconDataFactory implements BeaconDataFactory {
    public void requestBeaconData(Beacon beacon, final BeaconDataNotifier beaconDataNotifier) {
        new Handler().post(new Runnable() {
            public void run() {
                beaconDataNotifier.beaconDataUpdate(null, null, new DataProviderException("You need to configure a beacon data service to use this feature."));
            }
        });
    }
}
