package org.altbeacon.beacon;

import org.altbeacon.beacon.client.DataProviderException;

public interface BeaconDataNotifier {
    void beaconDataUpdate(Beacon beacon, BeaconData beaconData, DataProviderException dataProviderException);
}
