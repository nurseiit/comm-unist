package org.altbeacon.beacon.client;

import org.altbeacon.beacon.Beacon;
import org.altbeacon.beacon.BeaconDataNotifier;

public interface BeaconDataFactory {
    void requestBeaconData(Beacon beacon, BeaconDataNotifier beaconDataNotifier);
}
