package org.altbeacon.beacon;

import java.util.Collection;

public interface RangeNotifier {
    void didRangeBeaconsInRegion(Collection<Beacon> collection, Region region);
}
