package org.altbeacon.beacon.simulator;

import java.util.List;
import org.altbeacon.beacon.Beacon;

public interface BeaconSimulator {
    List<Beacon> getBeacons();
}
