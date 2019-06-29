package org.altbeacon.beacon.simulator;

import java.util.List;
import org.altbeacon.beacon.Beacon;

public class StaticBeaconSimulator implements BeaconSimulator {
    public List<Beacon> beacons = null;

    public List<Beacon> getBeacons() {
        return this.beacons;
    }

    public void setBeacons(List<Beacon> list) {
        this.beacons = list;
    }
}
